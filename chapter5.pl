#$line = <STDIN>;
#chomp($line);
#print "$line\n";          # when line is $ is ok
#
#@lines = <STDIN>;
#chomp(@lines);            #去掉结尾的换行符
#print "@lines\n";
my @tac;
while (<>){
    chomp;
    push @tac, $_;
}
foreach (@tac){
    $result = pop @tac;
    print "$result\n";
}
# perl chapter5.pl test.java
@array = qw /terry is a good boy/;
print @array;           # terryisagoodboy
print "@array\n";       # terry is a good boy
print (2+3)*4;          # 5
print ((2+3)*4);        # 20

# print 加括就是函数，有返回值

printf "in %d days!\n", 17.85;
printf "%s", "0123456789\n";
printf "%6f\n", 42;
printf "%6s\n", 42;        #总共6位，右边开始
printf "-%6s\n", 42;       #左对齐，从第6位开始

my @items = qw /wilma dino pebbles/;
my $format = "the items are:\n".("%10s\n" x @items);
## print "the format is >>$format<<\n";
printf $format, @items;

#die 是当程序退出时，能给出一些有效的信息  $!失败时系统的信息
if (@ARGV<2){
    die "Noe enough arguments\n";
}

##excercise##################################################
#excercise 1
@ARGV = reverse @ARGV;
while (<>){
    chomp;
    push @tac, $_;
}
foreach (@tac){
    $result = pop @tac;
    print "$result\n";
}