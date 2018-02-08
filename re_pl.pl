$version = "6.5.0.2_8n";
if($version =~ m/(\d+)\.(\d+)\.(\d+)/is){

print "version is $1\n";
print "version is $2\n";
}
if($Wilma =~ m/(\w+)/){
print "Wilma's word was $1.\n";

}else{
    print "Wilma doesn't have a word.\n";
}
print "hello world\n";
$string = "welcome to runoob site.";
$string =~ m/run/;
print "匹配前的字符串: $1\n";
print "匹配的字符串: $&\n";
print "匹配后的字符串: $'\n";

$version = "6.5.0.2_8n";
$version =~ m/(\d+)\.(\d+)\.(\d+)/is;
print "match is $&";