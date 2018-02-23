package Cocoa;
require Exporter;
@ISA = qw (Exporter);
@EXPORT = qw(setImports, declareMain, closeMain);


sub new{
    my $this={};      # Create an anoymous hash reference, and self points to it
    print "\n/** Created by Cocoa.pm\n";
    print "\n** Did this code even get pass the javac compiler?";
    print "\n**/\n";
    my $class = shift; # get the request class name
    bless $this, $class;      # use class name to bless() reference
    return $this;     # Return the reference to the hash
}

sub setImports{
    my $class = shift @_;
    my @names = @_;
    foreach (@names){
        print "import".$_.";\n";
    }
}


sub declareMain{
    my $class = shift @_;
    my ($name, $extends, $implements) = @_;
    print "\n pubic class $name";
    if($extends){
        print "extends".$extends;
    }
    if($implements){
        print "implements".$implements;
    }
    print "{\n";
}

sub closeMain{
    print "}\n";
}

1;