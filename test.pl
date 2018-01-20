#!/usr/bin/env perl

print "hello world\n";

print 2+3; 

print 5*4;

$fred = 17;
$barney = "hello";
print $fred, $barney;

$barney = $fred + 3;
print $barney;

$line = <STDIN>;
if ($line eq "\n"){
    print "that was just a blank line1\n";
}
else{
    print "that line of input was: $line";
}

$text = "a line of text\n";
chomp($text);

$count = 0;
while($count < 10){
    $count += 2;
    print "count is now $count\n";
}

#1.
$PI = 3.1415926;
$radius = <STDIN>;
if ($radius < 0){
    $result = 0;
}
else{

$result = 2 * $radius * $PI;
}
print $result;
$input_1 = <STDIN>;
print "\n";
$input_2 = <STDIN>;
print "\n";
print $input_1 * $input_2;
print "please print one string";
$str = <STDIN>;
print "\n";
print "please print one num";
$num = <STDIN>;
print ("$str"."\n") * $num;