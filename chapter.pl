print "hello world";
$fred = 17;
$barney = 'hello';
print $fred."\n";
print $barney."\n";
print $fred.$barney."\n";
$fred .= $barney;
print "print $fred .= $barney\n";
print $fred;
print $fred+3;
print $barney * 2;
print "******************************************";
$line = <STDIN>;
if ($line eq "\n"){
    print "That was just a blank line!\n";
}
else{
    print "that line of input was: $line";
}
$str = "terry";
print "$str x 3\n";

$count = 0;
while ($count<10){
    $count += 2;
    print "count is now $count\n"
}
#exercise;
# 1 caculator zhouchang
$radius = 12.5;
$result = 2*3.1415*$radius;
print "$result\n";

# 2 radius allow input
$radius = <STDIN>;
$result = 2 * 3.1415 * $radius;
print "$result\n";

# if radius is non-positive
$radius = <STDIN>;
if($radius < 0){
    print "result is 0\n";
}else{
    $result = 2 * 3.1415 * $radius;
    print "$result\n";

}

# input two numbers then multi them
$num_1 = <STDIN>;
$num_2 = <STDIN>;
$result = $num_1 * $num_2;
print "$result\n";

#input a string and num, result = string x num
print "input a string and num, result = string x num";
$str = <STDIN>;
$num = <STDIN>;
$result = ($str."\n") x $num;
print "$result\n";