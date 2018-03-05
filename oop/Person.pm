package Person;

sub new
{
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };

    print "name: $self->{_firstName}\n";
    print "last name: $self->{_lastName}\n";
    print "ssn: $self->{_ssn}\n";
    print "class name is: $class\n";
    bless $self, $class;                      # 哈希引用与类名相关联，这引用属于哪个类
    return $self;                             #返回哈希引用
}

# 类的实质是返回一个引用，可以指向其数据，也可以指向其方法

#创建一个对象
sub getFirstName{
    my ($self) = @_;                #这句不能省，括号都不能省
    return $self->{_firstName};
}

sub setFirstName{
    my ($self, $firstName) = @_;
    $self->{_firsName} = $firstName if defined($firstName);
    return $self->{_firsName};
}

1;