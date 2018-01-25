print "would you like to play a game";
chomp($_=<STDIN>);
if (/yes/i){
    print "in that case, I recommend that you go bowling.\n";
}

$_ = "I saw Barney\ndown at the bowing alley\nwith Fred\nlast night.\n";
if(/Barney.*Fred/){
    print "That string mentions Fred after Bamey.!\n";
}
elsif(/Barney.*Fred/s){
    print "that string metions fred after bamey.!\n";
}
$some_other = "I dream of betty rubble.";
if($some_other=~/\brub/){
    print "aye, there's the rub.\n";
}
 if ($wilma=~/(\w+)/){
     my $wilma_word = $1;
     print "**************************";
     print $wilma_word;
 }

 @fields = split /:/, "abc:def:g:h";
 print "------------------------";
 print @fields;
 
 @pieces = qw / aa bb cc 1 2 3 /;
 my $result = join ':', @pieces;
 print $result

 foreach(1..10){
     print "$_";
 }