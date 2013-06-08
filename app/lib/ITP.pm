package ITP;
use Mojo::Base 'Mojolicious';
use FindBin qw($Bin);
use ITP::Model;

# This method will run once at server start
sub startup {
    my $self = shift;
    my $config = $self->plugin('Config', {file => "$Bin/../etc/itp.conf"});

    my $m = ITP::Model->new(config => $config);
    $self->helper(model => sub {$m} );

    # Router
    my $r = $self->routes;

    # Normal route to controller
    $r->get('/')->to('controller#welcome');
    $r->post('/submit')->to('controller#submit');

}

1;
