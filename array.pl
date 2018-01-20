#!/usr/bin/env perl

$fred[0]="yabba";
$fred[1]="dabba";
$fred[2]="doo";
print $#fred;                # last element index 
print $fred[$#fred];         # last element of array
print $fred[-1];             # last element of array
qw{
   /usr/dict/words /home/terry
};

($fred, $barney, $dino) = ("flintstone", "rubble", undef);
print $fred."\n", $barney."\n", $dino."\n";
@rocks = qw /a b c d e/;
print $rocks[0];
$fred = pop(@rocks);
print $fred;
push @rocks, f;
print @rocks[-1];
@array = qw# dino fred barney #;
$m = shift @array;
print $m;
# pop, push according array[-1]
# shift, unshift according array[0]
print "now array have what\n";
print @array;
unshift(@array, 'terry');
print @array;

@fred =  qw /eating rocks is wrong/;
$fred = "right";
print "this is $fred[3]\n";
print "this is ${fred}[3]\n";
print "this is $fred"."[3]\n";
print "this is $fred\[3]\n";

foreach $rock (qw /bedrock slate lava/){
    print "One rock is $rock.\n";
}

foreach (1..10){
    print "I can count to $_ !\n";
}
