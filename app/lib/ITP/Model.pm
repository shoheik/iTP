package ITP::Model;
use Moo;
use Data::Dumper;
use FindBin qw($Bin);
use ITP::DB;
use utf8;
use Encode;
#use Cache::Memcached::Fast;

has 'config' => (
    is => 'ro',
    required => 1,
);

has 'db' => (
    is => 'ro',
    builder => '_build_db',
);

sub _build_db {
    my $self = shift;
    return ITP::DB->new(+{
        dsn => $self->config->{db_dsn},
        username => $self->config->{db_username},
        password => $self->config->{password}
    });
}

1;
