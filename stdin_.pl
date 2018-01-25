#!/usr/bin/env perl

# while(defined($line=<>)){
#    chomp($line);
#    print "It was $line that I saw!\n";
# }

@array = qw /larry boto terry/;
print "@array\n";
#print <>;
printf "hello %s", $array[0];
open CONFIG, "<", "dino";
if (! open PASSWD, "/etc/passwd"){
    die "how did you get logged in?($!)";
}
    while(<PASSWD>){
        chomp;
        
    }