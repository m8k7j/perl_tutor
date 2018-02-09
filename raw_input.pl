#$line = <STDIN>;
#@lines = <STDIN>;
##chomp(@lines);
#chomp($line);
#print "$line";
#print "@lines";
#
#while (defined($_=<STDIN>)){
#    print "I saw $_";
#}
#
#foreach (<STDIN>){
#    print "I saw $_";
#}

# when file is large, while is better than foreach
while (<>){
    chomp;
    print "It was $_ that I saw!\n";
}
# perl raw_input.pl test.java
# all elements stored in @ARGV initial to the code

@array = qw /a b c/;
print @array;     # abc
print "@array";   #contains space a b c
$result = print("hello world\n");
print "$result\n";
print (2+3)*4;                 # 5
print ((2+3)*4);               # 20
my $user = "hding";
my $days_to_die = 30;
printf "hello,%s; your password expires in %d days!\n", $user, $days_to_die;

my @items = qw (wilma dino pebbles);
my $format = "The items are: \n". ("%10s\n" x @items);
## print "the format is >> $format<<\n";
printf $format, @items;

# perl handle  STDIN, STDOUT, STDERR, DATA, ARGV, ARGVOUT
if(!open LOG, ">>logfile"){
    die "Cannot create lgile:$!";      # return error message of OS
}

######################################################
#exercise 1  tac
while(<>){
    print "$_";
}