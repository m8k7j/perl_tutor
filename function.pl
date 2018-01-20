#!/usr/bin/env perl

sub marine{
    print "hello world";
}

&marine;

$fred = 7;
$barney = 8;
sub larger_of_fred_or_barney{
    if ($fred > $barney){
        $fred;
    }
    else{
        $barney;
    }
}

print &larger_of_fred_or_barney;

sub max{
    if ($_[0]>$_[1]){
        $_[0];
    }
    else{
        $_[1];
    }
}
print &max(10,15);

sub max_para{
    my($m, $n) = @_;
    if ($m > $n){$m}else{$n}
}
print &max_para(20,30);

$maximun = &max_better(3,5,10,6);

sub max_better{
    my($max_so_far) = shift @_;
    foreach(@_){
        if($_>$max_so_far){
            $max_so_far = $_;
        }
    }
    $max_so_far;
}
print $maximun