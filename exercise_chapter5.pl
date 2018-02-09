#my @tac;
#while (<>){
#    chomp;
#    print "$_\n";
#    push @tac, $_;
#}
#foreach (@tac){
#    $result = pop @tac;
#    print "$result\n";
#}


# excercise 2
$width = <STDIN>;
chomp($width);
@lines = <STDIN>;
print "0123456789"x3;
print "\n";
foreach $item (@lines){
    $format = "%${width}s";
    printf $format, $item;

}
