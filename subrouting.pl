# function define
sub hello {
    print "hello, world\n";
}

sub volume {
    my $height = shift;     #弹出@_中的第一个值  10   @_: (20,30)
    my $width = shift @_;   #弹出@_中的第一个值  20   @_: (30)
    my ($depth) = @_;         #数组中的值   30

    return $height * $width * $depth;
}

print volume(10,20,30);

hello();

# passing arguments 
sub average {
    $n = scalar (@_);
    $sum = 0;

    foreach $item (@_){
        $sum += $item;
    }
    $average = $sum /$n;
    print "average for the given numbers: $average\n";
}

&average(10,20,30);

# passing list should be put it at last location
sub printList {
    my @list = @_;
    print "Given list is @list\n";
}

$a = 10;
@b = (1,2,3,4);
printList($a, @b);

$a = shift;
print "$a\n";

# passing hash to subroutines
sub printHash {
    my (%hash) = @_;
    foreach my $key (keys %hash){
        my $value = $hash{$key};
        print "$key: $value\n";
    }
}
sub PrintHash {
    my ($hash) = @_;
    foreach my $key (keys %$hash){
        my $value = $$hash{$key};
        print "$key: $value\n";
    }
}
%hash = ('name'=>'Tom', 'age' => 19);
printHash(%hash);
PrintHash(\%hash);