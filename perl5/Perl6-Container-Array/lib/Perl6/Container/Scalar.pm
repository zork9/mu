
# This is a Perl5 file

# ChangeLog
#
# 2005-08-15
# - created the 'Scalar' container

# TODO - verify .ref() and .undefine() implementations
# TODO - ++, --, .perl()
# TODO - is_constant trait?

use strict;

use Perl6::MetaModel;
use Perl6::Object;

my $class_description = '-0.0.1-cpan:FGLOCK';

$Perl6::Container::Scalar::class = 
class 'Scalar'.$class_description => {
    is => [ 'Perl6::Object' ],
    class => {
        attrs => [],
        methods => {
        }
    },
    instance => {
        attrs => [ [ '$.value' => { access => 'rw' } ] ],
        DESTROY => sub {},
        methods => {
            'num' =>      sub { 
                my $tmp = SELF->value; 
                defined $tmp ? $tmp->num : Num->new( '$.value' => 0 ) },
            'int' =>      sub { 
                my $tmp = SELF->value; 
                defined $tmp ? $tmp->int : Int->new( '$.value' => 0 ) },
            'str' =>      sub { 
                my $tmp = SELF->value; 
                defined $tmp ? $tmp->str : Str->new( '$.value' => '' ) },
            'bit' =>      sub { 
                my $tmp = SELF->value; 
                defined $tmp ? $tmp->bit : Bit->new( '$.value' => 0 ) },
            'ref' =>      sub { 
                my $tmp = SELF->value; 
                if ( defined $tmp ) {
                    return $tmp->ref;
                }
                else {
                    return $Perl6::Container::Scalar::class 
                }
              },
            'defined' =>  sub { 
                my $tmp = SELF->value; 
                defined $tmp ? Bit->new( '$.value' => 1 ) : Bit->new( '$.value' => 0 ) },
            'undefine' => sub { 
                # XXX - didn't undefine the value 
                # _('$.value' => undef) },
                my $self = shift;
                $self->{'instance_data'}{'$.value'} = undef;  # XXX
                $self;
              },
        },
    }
};

1;
__END__

=head1 NAME

Perl6::Container::Scalar - Perl extension for Perl6 "Scalar" class

=head1 SYNOPSIS

  use Perl6::Container::Scalar;

  ...

=head1 DESCRIPTION

...


=head1 SEE ALSO

Pugs

=head1 AUTHOR

Flavio S. Glock, E<lt>fglock@Egmail.com<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Flavio S. Glock

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.4 or,
at your option, any later version of Perl 5 you may have available.


=cut
