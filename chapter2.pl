use warnings;
@array_test = qw /1 2 3 a b c /;
@array_test_1 = (1,2,3,a,b,c);
print "@array_test\n";
#foreach $item (@array_test){
#    print "$item";
#}
$array_1 = \$array_test[1];
print "$array_1\n";
$eight = 0xff;
$eight_str = "0xff";
print "$eight\n";
print "$eight_str\n";
print 'hello
world\n';
# ${var}
$what = "hello world";
$n = 3;
print "this is a $n $whats.\n";
print "this is a $n ${what}s.\n";
print "this is a $n $what"."s.\n";
print 'this'.'is'.'a'.$n.$what.'s.'.'\n';
if (4>3){
    print 'yes';
}else{
    print 'no';
}
$text = <STDIN>;
print $text."hello\n";
$re = chomp($text);
print $re;
print $text."hello\n";

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