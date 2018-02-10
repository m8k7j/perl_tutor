$family_name{"fred"} = "flintstone";
$family_name{"barney"} = "rubble";

foreach $person (qw/barney fred/){
    print "I've heard of $person $family_name{$person}.\n";
}

@family_array = (a,b,c);
print "$family_array[0]\n";
%family_dic = (a,1,b,2,c,3);
print "$family_dic{'a'}\n";

# hash to list
%some_hash = ("foo", 35, "bar", 12.4, 2.5, "hello", "wilma", 1.72e30, "betty", "bye\n");
@array_array = %some_hash;
print "@array_array\n";

my %last_name = (
    "fred" => "flintstone",
    "dino" => undef,
    "barney" => "rubble",
    "betty" =>"rubble"
);

print "$last_name{'fred'}\n";
my @k = keys %last_name;
print "@k\n";
my @v = values %last_name;
print "@v\n";

while(($key, $value) = each %last_name){
    print "$key=>$value\n";
}

$books{'fred'} = 3;
$books{'wilma'} = 1;
if($books{$someone}){
    print "$someone has at least one book checked out.\n";
}

$books{"barney"} = 0;
$books{"pebbles"} = undef;
if (exists $books{$dino}){
    print "Hey, there's a library card for dino!\n";
}
if ($books{$dino}){
    print "Hey, there's a library card for dino!\n";
}

my $person = "betty";
delete $books{$person};

## exercise###################################
# exercise 1
print "please input your given name";
$name = <STDIN>;
chomp($name);
%family_name =(
    'fred' => "flintstone",
    'barney' => "rubble",
    'wilma' => "flintstone"
);
print "$family_name{$name}\n";

# exercise 2
my @str;
while (<STDIN>){
    push @str, $_;
}
for($i=0;$i<)
