use strict;

sub max{
    my($max_so_far) = shift @_; #(3,5,10,6)传入@_， 随后把3移出给$max_so_far
    foreach (@_){
        if($_>$max_so_far){
            $max_so_far=$_;
        }
    }
    $max_so_far;
}


my $maximum;
$maximum = &max(3,5,10,6);
print "$maximum\n";

my @names = qw /fred barney betty dino wilma pebbles bam-bamm/;
my $result = &which_element_is("dino", @names);
print "$result\n";

sub which_element_is{
    my($what, @array)= @_;
    foreach(0..$#array){
        if($what eq $array[$_]){
            return $_;
        }
    }
    -1;
}

sub list_from_fred_to_barney{
    my ($fred, $barney) = @_;
    if($fred<$barney){
        #Count upwards from $fred to $barney
        $fred .. $barney;
    }    
    else{
        #count downward from $fred to $barney
        reverse  $barney..$fred;
    }
}
my $fred = 11;
my $barney = 6;
my @c = &list_from_fred_to_barney($fred, $barney);
print "@c\n";

##########################################################
#Exercise
#1. give a sub function about sum()
my @fred = qw {1 3 5 7 9};
my $fred_total = &total(@fred);
print "The Total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines:";
my $user_total = &total(<STDIN>);
print "The total of those numbers is $user_total.\n";

sub total{
    my (@list) = @_;
    my $sum = 0;
    foreach (@list){
        $sum += $_;
    }
    return $sum;
}

#2. calculate (1..1000) sum
$result = &total(1..1000);
print "$result\n";

#3. return gt average list
print "3. return gt average list &&&&&&&&&&&&&&&&&&&&&&&&&&&\n";
my @fred = &above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = &above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub average{
    my (@list) = @_;
    my $sum = 0;
    my $result = 0;
    foreach (@list){
        $sum += $_;
    }
    $sum / ($#list+1)
}

sub above_average{
    my (@list) = @_;
    my @result;
    my $average_num = &average(@list);
    print "$average_num\n";
    foreach (@list){
        if ($_ > $average_num){
            push @result, $_;
        }
    }
    return (@result);
}

sub above_average{
    my ($num, @list) = @_;
    my $average_num = &average(@list);
    if($num > $average_num){
        return $num;
    }
}