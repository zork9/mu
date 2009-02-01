package modules::local::partcllog;
use strict;
use warnings;
use XML::Atom::Client;
use HTML::Entities;
use WWW::Shorten::Metamark;
use WWW::Shorten 'Metamark';

# Parse ATOM generated by google code.

my $url  = 'http://code.google.com/feeds/p/partcl/svnchanges/basic';
my $lastrev;
my $copy_of_self;

sub init {
    my $self = shift;
    $copy_of_self = $self;
    my $rev = main::get_item($self, "partcl_lastrev");
    undef $rev unless length $rev;
    $lastrev = $rev if defined $rev;
    main::lprint("partcllog: init: initialized lastrev to $lastrev") if defined $lastrev;
    main::create_timer("partcllog_fetch_feed_timer", $self, "fetch_feed", 30);
}

sub implements {
    return qw();
}

sub shutdown {
    my $self = shift;
    main::delete_timer("partcllog_fetch_feed_timer");
    main::store_item($self, "partcl_lastrev", $lastrev) if defined $lastrev;
}

sub fetch_feed {
    my $atom = XML::Atom::Client->new();
    my $feed = $atom->getFeed($url);
    process_feed($feed);
}

sub process_feed {
    my $feed = shift;
    my @items = $feed->entries;
    @items = sort { $a->updated cmp $b->updated } @items; # ascending order
    my $newest = $items[-1];
    my $latest = $newest->updated;
    $latest = $items[0]->updated if exists $ENV{TEST_RSS_PARSER};

    # skip the first run, to prevent new installs from flooding the channel
    if(defined($lastrev)) {
        # output new entries to channel
        foreach my $item (@items) {
            my $updated = $item->updated;
            output_item($item) if $updated gt $lastrev;
        }
    }
    $lastrev = $latest;
    main::store_item($copy_of_self, "rakudo_lastrev", $lastrev);
}

sub longest_common_prefix {
    my $prefix = shift;
    for (@_) {
        chop $prefix while (! /^\Q$prefix\E/);
    }
    return $prefix;
}


sub output_item {
    my $item = shift;
    my $prefix  = 'unknown';
    my $creator = $item->author->name;
    my $link    = $item->link->href;
    my $desc    = $item->content->body;

    $creator = "($creator)" if($creator =~ /\s/);

    my ($rev)   = $link =~ m|\?r=([0-9]+)|;
    my $log;
    decode_entities($desc);
    $desc =~ s/\xa0//g;
    $desc =~ s/^\s+//s;
    $desc =~ s/\s+$//s;
    $desc =~ s/<br\/>//g;
    my @lines = split("\n", $desc);
    my @files;
    while($lines[0] =~ /[^ ]/) {
        if($lines[0] =~ m[(?:Modify|Add|Delete)/(.+)]) {
            print("got a match $1\n");
            push(@files, $1);
        }
        shift(@lines);
    }
    return main::lprint("partcllog: error parsing filenames from description")
        unless $lines[0] eq ' ';
    pop(@lines)   while scalar(@lines) && $lines[-1] eq '';
    $log = join("\n", @lines);
    $log =~ s/^\s+//;

    $prefix =  longest_common_prefix(@files);
    $prefix =~ s|^/||;      # cut off the leading slash
    if(scalar @files > 1) {
        $prefix .= " (" . scalar(@files) . " files)";
    }

    $log =~ s|<br */>||g;
    decode_entities($log);
    my @log_lines = split(/[\r\n]+/, $log);

    put("partcl: r$rev | $creator++ | $prefix:");
    foreach my $line (@log_lines) {
        put("partcl: $line");
    }
    put("partcl: review: $link");
    main::lprint("partcllog: output_item: output rev $rev");
}

sub put {
    my $line = shift;
    main::send_privmsg("magnet", "#parrot", $line);
}

1;
