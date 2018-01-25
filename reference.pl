# reference is a scalar, a location of @, $, %
$foo = "terry\n";
$scalarref = \$foo;
print $scalarref;
print $$scalarref;
$hashref = {
    'Adam' => 'Eye',
    'Clyde' => 'Bonnie'
};
print $hashref;
print %$hashref."\n";
print $$hashref{'Adam'}."\n";

$coderef = sub { print "terry!\n"};
print ref(\$coderef);

# Reference to Functions
sub PrintHash {
    my (%hash) = @_;
    foreach $item (%hash){
        print "Item: $item\n";
    }
}
%hash = ('name'=>'Tom', 'age'=>19);
$cref = \&PrintHash;
&$cref(%hash);