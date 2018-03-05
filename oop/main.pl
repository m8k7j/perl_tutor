use Employee;
# 创建object
$object = new Employee("terry", "ding", 579228);
# 调用重写的getFirstName()多了print this is a subrouter
$firstName = $object->getFirstName();
print "first name: $firstName\n";
# Employee 新增的函数
$object->setLastName("bob");
# Employee 新增的函数
$lastName = $object->getLastName();
print "after lastname is: $lastName\n";
# Person 继承下来的函数
$object->setFirstName("Sam");
$firstName = $object->getFirstName();
print "after firstName change to: $firstName\n";