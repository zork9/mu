{ package KindaPerl6::Visitor::ExtractRuleBlock; 
# Do not edit this file - Perl 5 generated by KindaPerl6
use v5;
use strict;
no strict 'vars';
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; BEGIN { $_MODIFIED = {} }
BEGIN { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::KindaPerl6::Visitor::ExtractRuleBlock )
,"true"),"p5landish") ) { }  else { do {::MODIFIED($::KindaPerl6::Visitor::ExtractRuleBlock);
$::KindaPerl6::Visitor::ExtractRuleBlock = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Visitor::ExtractRuleBlock' )
 )
, 'PROTOTYPE',  )
} } }
; ::DISPATCH( ::DISPATCH( $::KindaPerl6::Visitor::ExtractRuleBlock, 'HOW',  )
, 'add_attribute', ::DISPATCH( $::Str, 'new', 'count' )
 )
; ::DISPATCH( ::DISPATCH( $::KindaPerl6::Visitor::ExtractRuleBlock, 'HOW',  )
, 'add_method', ::DISPATCH( $::Str, 'new', 'visit' )
, ::DISPATCH( $::Method, 'new', sub  { my  $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $node; $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } )  unless defined $node; BEGIN { $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } ) }
;
my $node_name; $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } )  unless defined $node_name; BEGIN { $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } ) }
;
my $path; $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } )  unless defined $path; BEGIN { $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } ) }
;
$self = shift; my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; BEGIN { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));do {::MODIFIED($List__);
$List__ = ::DISPATCH( $CAPTURE, 'array',  )
};do {::MODIFIED($node);
$node = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 0 )
 )
};do {::MODIFIED($node_name);
$node_name = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 1 )
 )
};do {::MODIFIED($path);
$path = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 2 )
 )
};do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_infix_58__60_eq_62_, 'APPLY', $node_name, ::DISPATCH( $::Str, 'new', 'Rule::Block' )
 )
,"true"),"p5landish") ) { my $comp_unit; $comp_unit = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$comp_unit' } )  unless defined $comp_unit; BEGIN { $comp_unit = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$comp_unit' } ) }
;
my $name; $name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$name' } )  unless defined $name; BEGIN { $name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$name' } ) }
;
use Data::Dumper; do {::MODIFIED($comp_unit);
$comp_unit = ::DISPATCH( $path, 'INDEX', ::DISPATCH( $GLOBAL::Code_infix_58__60__45__62_, 'APPLY', ::DISPATCH( $::Int, 'new', 0 )
, ::DISPATCH( $::Int, 'new', 1 )
 )
 )
}; do {::MODIFIED(::DISPATCH( $self, "count" )
);
::DISPATCH( $self, "count" )
 = ::DISPATCH( $GLOBAL::Code_infix_58__60__43__62_, 'APPLY', ::DISPATCH( $self, "count" )
, ::DISPATCH( $::Int, 'new', 1 )
 )
}; do {::MODIFIED($name);
$name = ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( $::Str, 'new', '__rule_block' )
, ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( $self, "count" )
, $GLOBAL::COMPILER::source_md5 )
 )
}; ::DISPATCH( $GLOBAL::Code_push, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( ::DISPATCH( $comp_unit, 'body',  )
, 'body',  )
 )
, ::DISPATCH( $::Method, 'new', ::DISPATCH( $::Str, 'new', 'block' )
 => ::DISPATCH( $node, 'closure',  )
,::DISPATCH( $::Str, 'new', 'name' )
 => $name, )
 )
; ::DISPATCH( $node, 'closure', $name )
; return($node)
 }  }
 }
 )
 )

; 1 }

