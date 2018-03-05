package Employee;
use Person;
use strict;
our @ISA = qw(Person);

sub new{
    my ($class) = @_;

    my $self = $class->SUPER::new($_[1], $_[2], $_[3]);
    $self->{_id} = undef;
    $self->{_title} = undef;
    bless $self, $class;
    return $self;
}

sub getFirstName{
    my ($self) = shift;
    print "this is a subrouting";
    return $self->{_firstName};
}

sub setLastName{
    my $self = shift;
    my $lastName = shift;
    $self->{_lastName} = $lastName if defined ($lastName);
    return $self->{_lastName};
}

sub getLastName{
    my ($self) = @_;
    return $self->{_lastName};
}

1;