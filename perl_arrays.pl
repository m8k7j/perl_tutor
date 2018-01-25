@array = (1, 2, 'hello');
print "@array\n";

@array = qw / 1, 2, 'hello' /;
print "@array\n";

@days = qw /Monday
Tuesday 
...
Sunday/;
print "@days\n";
print "\$days[0] = $days[0]\n";

@days = qw /    Mon   Tue   Wed  Thu    Fri   Sat   Sun    /;
print @days;
print $days[-1];
foreach (@days){
    print "$_\n";
}

# number arrays  .. range operator
@var_10 = (1..10);
print @var_10;

@array = (1,2,3);
$array[50] = 4;
$size = @array;
$max_index = $#array;
print "Size: $size\n";
print "Max Index: $max_index\n";

#push @array, list
#pop @array
#shift @array
#unshift @array, list
@coins = qw /Quarter Dime Nickel/;
print "@coins\n";

push coins, penny;
print "@coins\n";
unshift (coins, "dollar");
print "@coins\n";
pop coins;
print "@coins\n";
shift coins;
print "@coins\n";

#slicing array elements
@days = qw /Mon Tue Wed Thu Fri Sat Sun/;
@weekdays = @days[3,4,5];
@weekdays_1 = @days[3..5];
print "@weekdays\n";
print "@weekdays_1\n";

#replacing
#splice @array , offset [length [, list]]
@nums = (1..20);
print "before - @nums\n";
splice (@nums, 5, 5, 21..28); #用21..28列表来插入到offset为5位置
print "after - @nums\n";

# transfor string to arrays
# split [pattern[,expr[,limit]]]
$var_string = "Rain-Drops-On-Roses";
$var_names = "Larry,David,Roger,Ken";
@string = split('-', $var_string);
@names = split(',', $var_names);
print "@string\n";
print "@names\n";

#transform arrays to strings
# join EXPR, LIST
$var_names = "larry, david, roger";
$string1 = join(',', @var_names);
print "$string1\n";

#sorting arrays
#sort [subroutine] LIST
@foods = qw /pizza steak chicken burgers/;
@sort_foods = sort @foods;
print "@foods\n";
print "@sort_foods\n";

# $[  first index of arrays
# $#  last index of arrays
# if $[ = 1, first index is 1 not 0
# merge 
@odd = (1,3,5);
@even = (2,4,6);
@numbers = (@odd, @even);
print "@numbers\n";

# select elements
$var = (2..10)[3];
print "$var\n";

