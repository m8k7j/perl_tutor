while (<>){
    chomp;
    if(/YOUR_PATTERN_GOES_HERE/){
        print "Matched: |$`<$&>$'|\n";
    }else{
        print 'no match:|$_|\n';
    }
}