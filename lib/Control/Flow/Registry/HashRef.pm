package Control::Flow::Registry::HashRef;

use Moose::Role;
with 'Control::Flow::Role::Registry';

has _tags => (
  isa => 'HashRef',
  is => 'ro',
  default => sub {+{}},
  traits => ['Hash'],
  handles => {
    _set_tag => 'set',
    _get_tag => 'get',
    _tag_keys => 'keys',
  },
);

1;
__END__
