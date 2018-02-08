#!/usr/bin/env perl

$str = "abc";
print $str;

@array = qw / aa bb cc dd /;
print @array;

sub sum{
    my ($a,$b) = @_;
    $a+$b;
}
$result = &sum(3,4);
print $result;

my %hash_ = (
    "a" => "terry",
    "b" => "aries",
);
print $hash_{"a"};