package Employee;
sub new{
    my ($name, $age, $position) = @_;
    my $r_employee = {
        "name" => $name,
        "age" => $age,
        "position" => $position,
    };
    return $r_employee;
}

$emp1 = new("john Doe", 32, "Software Engineer");
$emp2 = new("Norma Jean", 25, "Vice President");
print $emp1->{"name"};

sub promote{
    my $r_employee = shift;
    $r_employee->{"postion"}=lookup_next_position($r_employee->{"position"});
    
}
promote($emp1);