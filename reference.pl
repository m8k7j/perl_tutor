# reference is a scalar, a location of @, $, %
$foo = "terry\n";
$scalarref = \$foo;
print $scalarref;               #SCALAR(0x369048)
print $$scalarref;              # terry
$hashref = {
    'Adam' => 'Eye',
    'Clyde' => 'Bonnie'
};
print $hashref."\n";                  #HASH(0x3dc320)
print "verify hashref vaule.......\n";
print %$hashref;              # AdamEyeClydeBonnie
print "...........................\n";
print $$hashref{'Adam'}."\n";      # Eye

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

# 引用的作用在于给函数传参时可以传入不同的数组，不同的字典，而不会弄混
# 如果没有引用，传两个数组到函数中，则存在@_中，需要算个数，而有引用则不需要
my @array_1 = (1,2,3);
my @array_2 = (4,5,6,7);
sub add_arrays{
    my ($rarray1, $rarray2) = @_;
    $len2 = @$rarray2;
    for ($i=0; $i<$len2;$i++){
        $rarray1->[$i] += $rarray2->[$i];
    }
    return $rarray1
}
my $ra_1 = \@array_1;
my $ra_2 = \@array_2;
my $result =  &add_arrays($ra_1, $ra_2);
print @$result;

sub test_ref{
    return \$a;
}

$a = 10;
$b = ${test_ref()};
print "$b\n";

# 嵌套
%sue = (
    'name'=> 'Sue',
    'age' => '45'
);

%john = (
    'name'=> 'John',
    'age' => '20',
);

%peggy = (
    'name' => 'peggy',
    'age' => '16',
);

@children = (\%john, \%peggy);
$sue{'children'} = \@children;
print "****************************\n";
print $sue{'children'}[1]{'age'};
print $sue{'children'}->[1]->{'age'};

# ref()检查参数是否为引用，并标明引用的类型
print "ref($sue{'children'})\n";