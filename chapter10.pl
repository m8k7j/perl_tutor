#unless
$fred = "3abc";
unless($fred =~ /^[A-Z]\w*$/i){
    print "The value of \$fred doesn't look like a perl identifier\n";
}

$mon = Feb;
unless($mon =~ /^Feb/){
    print "this month has at last thirty days.\n";
}
else{
    print "Do you see what's going on here?\n";
}

# until
my $i = 4;
my $j = 9;
while ($i<$j){
    $i++;
    print "$i\n";
}
until($i<$j){
    $i--;
    print "$i\n";
}

print "$n is a negative number.\n" if $n<0;
$dino = 3;

if(!defined $dino){
    print "the value is undef.\n";
}
elsif($dino == 3){
    print "the value is 3\n";
}
else{
    print "the value is nothing\n";
}

my @people = qw /fred barney ban-bam wilma dino barney betty/;
my %seen;
my $count = 0;
foreach (@people){
    print "I've seen you somewhere before, $_!\n";
    if ($seen{$_}){ $count++;}
}

# for
for($i=1;$i<10;$i++){
    print "$i\n";
}

#last, next
for ($i=1;$i<10;$i++){
    if($i==5){
    #    last;
        next;
    }
    else{
        print "$i\n";
    }
}

#redo
print "redo...............";
my @words = qw {fred barney pebbles dino wilma betty};
my $errors = 0;
foreach(@words){
    print "type the word '$_':";
    chomp(my $try=<STDIN>);
    if($try ne $_){
        print "sorry-That's not right\n";
        $errors++;
        redo;
    }
}
print "You've completed the test, with $errors.\n";