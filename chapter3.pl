#array
@array_list = qw /a b c 1 2 3/;
print "@array_list\n";
print "$#array_list\n";   #    $#last element of index
print "$array_list[1]\n";
print "$array_list[-1]\n";
@list = (2..9);
print "list is @list\n";
@list = qw {
    /usr/local/
    /usr/local/bin
    /usr/bin
};
print "@list\n";
$pop_item = pop @list;
print "$pop_item\n";
print "@list\n";
push @list, '/etc/passwd';
print "@list\n";
$shift_item = shift @list;
print "shift element is $shift_item\n";
print "@list\n";
unshift @list, "/usr/bin";
print "@list\n";
($fred, $barney, $dino) = ("terry", "rubble", undef);
print "$fred $barney $dino\n";

@fred = qw (eating rocks is wrong);
$fred = "right";
print "this is $fred[3]\n";
print "this is ${fred}[3]\n";
print "this is $fred"."[3]\n";
print "this is $fred\[3]\n";

foreach $i (qw /a b c/){
    print "$i\n";
}

foreach (2..9){
    print "$_\n";
}

#reverse only get a reverse, but doesn't change raw data 
@fred = (6..10);
@dino = reverse @fred;
print "@dino\n";
print "@fred\n";
@result = sort @dino;
print "@result\n";

#exercise;
#1 read string in input and reverse them
@lines = <STDIN>;
@result = reverse @lines;
print "before reverse @lines\n";
print "after reverse @result\n";

#2 input some number then output names
@lines = <STDIN>;
foreach $item (@lines){
    if($item==1) {print "fred\n";}
    elsif($item==2) {print "betty\n";}
    elsif($item==3) {print "barney\n";}
    elsif($item==4) {print "dino\n";}
    elsif($item==5) {print "Wilma\n";}
    elsif($item==6) {print "pebbles\n";}
    elsif($item==7) {print "bamm-bamm\n";}
    else {print "nothing\n";}
    
}

#3 read some string, then sort
@lines = <STDIN>;
@result = sort @lines;
foreach (@result){
    print "$_\n";
}