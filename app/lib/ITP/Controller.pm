package ITP::Controller;
use Mojo::Base 'Mojolicious::Controller';
use Data::Dumper;

# This action will render a template
sub welcome {
  my $self = shift;

  $self->render(
    text => 'Welcome');
}

sub submit {
    my $self = shift;
    my $data = $self->req->json;
    print Dumper $data;
    $self->res->headers->header("Access-Control-Allow-Origin" => '*');
    $self->render( text => 'I got this');
}

1;
