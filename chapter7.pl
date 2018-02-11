$_ = "yabba dabba doo";
if (/abba/){
    print "it matched!\n";
}

# . 匹配任意字符 ，除回车
# * 匹配前一项0次或多次         {0,}
# + 匹配前一项1次或多次         {1,}
# ？匹配前一项0次或1次          {0,1}
# {a,b} 匹配的次数在(a,b)之间 

# 分组 （）把多个字符串作为一个分组， 一个单位
# 选择 | 匹与左边的或者右边的 /fred|barne|betty/ 匹与三个单词中的一个则ok
# 字符类 [] 匹配中括号中的字符， 也可以是范围[a-z]

# \d 数字
# \w 字母，数字，下划线  不匹配单词，只匹配单个字符
# \s 空白 等价于[\f\t\n\r] 格式符， 制表符， 换行符， 回车以及空格符  也是单个字符

# 补集 \d 数字 \D非数字 [^\d]

###################exercise###############################
# output "fred" line
#while (<>){
#    if (/(f|F)red/){
#        print "$_\n";
#    }
#    if (/\./){
#        print "$_\n";
#    }
#    if (/[^AZ]/){
#        print "$_\n";
#    }
#    if (/.*(fred).*(wilma).*/){
#        print "$_\n";

#    }

#}

# /i 不匹分大小写
# /s 匹本任意字会包含回车符
# /x 允许模式中加入空白
# /isx 
# anchors 从哪个位置开始匹配
# ^ 开始
# $ 结尾
# /b 词界 分为开头和结尾  /\bhunt/ => hunter   /hunt\b/ => andhunt
# =~ 将右边的模式在左边的字符串上进行匹配
$_ = "barney aa sd fred";
if (m{
    barney
    .*
    fred
}six){
    print "that string mentions Fred after Barney!\n";
}

my $some = "AAb";
if($some =~ m/[^A-Z]*[A-Z][^A-Z]/){
    print "$some\n";
}

print "Do you like Perl";
my $likes_perl = (<STDIN> =~ /\byes\b/i);
print "$likes_perl\n";

# $1, $2 与 模式中的括号个数相对应
$_ = "hello there, neighbor";
if(/\s(\w+),/){
    print "\$1 is $1\n";
    print "\$` is $`\n";
    print "\$' is $'\n";
    print "\$& is $&\n";
}

# priority
# 1. ()
# 2. *+?
# 3. ^,$,\b
# 4. |


###exercise#####################
print "exercise is now..............";
my $what = /(fred|barney){3}/;
while(<>){
    chomp;
    if(/(fred|barney){3}/){
        print "$_\n";
    }
}