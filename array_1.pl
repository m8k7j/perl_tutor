$age = 25;
$name = "John Paul";
print "age = $age\n";
print "name = $name\n";


@ages = (25, 30,40);
@names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";     #\$ages[0] 转义
print "\$names[1] = $names[1]\n";

%data = ('John Paul', 45, 'lisa', 30, 'kumar', 40);
%dic = (
    'John Paul' => 45,
    'lisa' => 30,
    'kumar' => 40
);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$dic{'kumar'} = $data{'kumar'}\n";

#perl 是弱类型， 它可以通过上下文自动进行类型转换
@names = ('John', 'terry', 'cathy');
$size = @names;
print "$size\n";

$str = "hello". "world";
$num = 5 + 10;

print <<EOF;
This is 
a multiline
string
EOF

$smile = v9786;
$foo = v102.111.111;
print "$smile\n";
print "$foo\n";

print __FILE__. "\n";
print __LINE__. "\n";
print __PACKAGE__. "\n";