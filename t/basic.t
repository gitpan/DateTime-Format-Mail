# $Id: basic.t,v 1.1 2003/04/04 05:35:27 koschei Exp $
use strict;
use Test::More tests => 4;

BEGIN {
    use_ok 'DateTime::Format::Mail';
}

my $class = 'DateTime::Format::Mail';

# Does new() work properly?
{
    eval { $class->new('fnar') };
    ok( $@ and $@ =~ /takes no param/, "Too many parameters exception" );

    my $obj = eval { $class->new() };
    ok( !$@, "Created object" );
    isa_ok( $obj, $class );

}

