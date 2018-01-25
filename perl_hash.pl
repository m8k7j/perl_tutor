%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "$data{'John Paul'}\n";

# creating hash
$data{'terry'} = 30;
print %data;
%data = (
    'John Paul' => 45,
    'Lisa'      => 30
);
print "$data{'Lisa'}\n";
%data = (-John=>45, -Lisa=>30);
print "***********************";
$val = $data{-John};
print "$val\n";

%data = ('john', 45, 'lisa', 30, 'terry', 31);
@array = @data{'john','terry'};
print "@array\n";

#extracing keys
# keys %hash
@names = keys %data;
print "@names\n";

@values = values %data;
print "@values\n";

# checking for existence
if (exists ($data{"lisa"})){
    print "Lisa is $data{'Lisa'} years old\n";
}
else{
    print "I don't known age of Lisa\n";
}

#getting Hash Size
$size = keys %data;
print "$size\n";

# add remove elements
@keys = keys %data;
print "@keys\n";
$data{'mia'}=21;
@keys = keys %data;
print "@keys\n";

delete $data{'terry'};
@keys = keys %data;
print "@keys\n";