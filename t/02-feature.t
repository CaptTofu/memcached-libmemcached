use Test::More tests => 5;

BEGIN {
use_ok( 'Memcached::libmemcached' );
}

my $obj = Memcached::libmemcached->new(1);
ok( $obj->increment );
ok( $obj->{value} == 2);

$obj = Memcached::libmemcached->new(value => 3);
ok( $obj->{value} == 3 );
ok( $obj->increment == 4 );
