{ package KindaPerl6::Grammar; 
# Do not edit this file - Perl 5 generated by KindaPerl6
use v5;
use strict;
no strict 'vars';
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; BEGIN { $_MODIFIED = {} }
BEGIN { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
our $Code_declare_parameters = ::DISPATCH( $::Routine, 'new', { modified => $_MODIFIED, name => '$Code_declare_parameters' } ) ;
;
do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::KindaPerl6::Grammar )
,"true"),"p5landish") ) { }  else { our $Code_declare_parameters = ::DISPATCH( $::Routine, 'new', { modified => $_MODIFIED, name => '$Code_declare_parameters' } ) ;
;
do {::MODIFIED($::KindaPerl6::Grammar);
$::KindaPerl6::Grammar = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Grammar' )
 )
, 'PROTOTYPE',  )
} } }
; do {::MODIFIED($Code_declare_parameters);
$Code_declare_parameters = ::DISPATCH( $::Code, 'new', { code => sub { my $vars; $vars = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$vars' } )  unless defined $vars; BEGIN { $vars = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$vars' } ) }
;
my $decl; $decl = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$decl' } )  unless defined $decl; BEGIN { $decl = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$decl' } ) }
;
my $var; $var = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$var' } )  unless defined $var; BEGIN { $var = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$var' } ) }
;
my  $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $env; $env = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$env' } )  unless defined $env; BEGIN { $env = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$env' } ) }
;
my $block; $block = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$block' } )  unless defined $block; BEGIN { $block = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$block' } ) }
;
my $sig; $sig = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$sig' } )  unless defined $sig; BEGIN { $sig = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$sig' } ) }
;
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; BEGIN { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));do {::MODIFIED($List__);
$List__ = ::DISPATCH( $CAPTURE, 'array',  )
};do {::MODIFIED($env);
$env = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 0 )
 )
};do {::MODIFIED($block);
$block = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 1 )
 )
};do {::MODIFIED($sig);
$sig = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 2 )
 )
};do {::MODIFIED($vars);
$vars = ::DISPATCH( $::Array, "new", { _array => [::DISPATCH( $::Var, 'new', ::DISPATCH( $::Str, 'new', 'sigil' )
 => ::DISPATCH( $::Str, 'new', '@' )
,::DISPATCH( $::Str, 'new', 'twigil' )
 => ::DISPATCH( $::Str, 'new', '' )
,::DISPATCH( $::Str, 'new', 'name' )
 => ::DISPATCH( $::Str, 'new', '_' )
, )
, ::DISPATCH( $sig, 'invocant',  )
, ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( $sig, 'positional',  )
 )
] } )
}; $decl; $var; do { for my $var ( @{ ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', $vars )
 )
->{_value}{_array} } ) { my $var; $var = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$var' } )  unless defined $var; BEGIN { $var = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$var' } ) }
;
do { if (::DISPATCH(::DISPATCH(::DISPATCH( $var, 'isa', ::DISPATCH( $::Str, 'new', 'Var' )
 )
,"true"),"p5landish") ) { ::DISPATCH( $GLOBAL::Code_push, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', $decl )
, ::DISPATCH( $::Decl, 'new', ::DISPATCH( $::Str, 'new', 'decl' )
 => ::DISPATCH( $::Str, 'new', 'my' )
,::DISPATCH( $::Str, 'new', 'var' )
 => $var,::DISPATCH( $::Str, 'new', 'type' )
 => ::DISPATCH( $::Str, 'new', '' )
, )
 )
 }  }
 } }
; ::DISPATCH( $env, 'add_lexicals', $decl )
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::Array, "new", { _array => [ ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'env', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'block', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'sig', } )
,  ] } ), hash     => ::DISPATCH( $::Hash,  "new", { _hash  => {  } } ), return   => $::Undef, } )
,  } )
}
; 1 }

