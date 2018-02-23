sub sum{
    my @tmp = shift;
    
    print "$tmp\n"; 
}

&sum(3);

%hash_a = (
    'a'=>'terry',
    'b'=>'peter',
);

sub addObject(%)
{
    my $self     = shift;
    my @tmp_obj  = @_;
    my $object;
    print "self is ".$self."\n";
    print @tmp_obj;


}

addObject(%hash_a);

package Person;
sub new{
    my $cla = shift;
    my $self = {
        _firstName => shift,
        _lastName => shift,
        _ssn => shift,
    };
    print "name : $self->{_firstName}\n";
    print "lastname : $self->{_lastName}\n";
    print "ssn : $self->{_ssn}\n";
    print "class is : $cla\n";
    bless $self, $cla;
    return $self;
}

sub getFirstName{
    my $this = shift;
    return $this->{_firstName};
}

sub setFirstName{
    my ($self, $firstName) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

$object = new Person('terry', 'ding', 579228);
print "***********************\n";
print $object->{_firstName};
$firstName = $object->getFirstName();
print "$firstName\n";
print $object->setFirstName('cat');

package Employee;
our @ISA = qw /Person/;

sub new {
    my $class = shift;
    my $self = $class->SUPER::new($_[0], $_[1], $_[2]);
    $self->{_id} = undef;
    $self->{_title} = undef;
    bless $self, $class;
    return $self;
}

sub getLastName{
    my $self = shift;
    return $self->{_lastName};
}

$object = new Employee('Sam', 'Sun', 57839);
print $object->getFirstName();