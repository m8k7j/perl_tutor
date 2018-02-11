while(<>){
    chomp;
    if(/(\w+)a\b/){
        print "Matched: |$`<$&>$'|\n";
    }
    else{
        print"no match:|$_|\n";
    }
}