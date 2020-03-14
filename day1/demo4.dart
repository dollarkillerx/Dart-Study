void main() {
  t3();
}

// 算数运算符
void t1() {
  // +、-、*、/、%同Java语言
}

// 类型判定运算符
void t2() {
  // as 用于类型置换
  // is 如果对象是指定类型返回 True
  // is! 如果对象不是指定类型返回 False

  // 还没有到对象 这里前置知识是空白
}

// 条件表达式
void t3() {
  // 三目表达式
  // condition ? expr1 : expr2

  // 非空条件判断符??
  // expr1 ?? expr2

  var str1 = "Hello";
  var str2 = "World";

  // 如果str1 is！ null == false , return str1  else return str2.toUpperCase();
  var result = str1 ?? str2.toUpperCase();
  print(result);
}

// 级联运算符 
/*
我们通常使用.操作符调用对象的方法，这在Dart中也是支持的，但是Dart另外增加了一种级联运算符..，用两个点表示。=
级联运算符可以在同一个对象上连续调用多个方法以及访问成员变量。 使用它可以避免创建临时变量， 写出更流畅的代码。
假如类Person有三个方法，setName、setAge、save，则可如下调用
*/
void t4() {
  // new Person()..setName("Bob")..setAge(20)..save();

}

// 条件成员访问符
// 条件成员访问符?.，它和.类似，但是运算符左边的对象不能为null，否则返回null，若对象不为null，则返回对象本身。
void t5() {
  // // list1默认值为null
  // List list1;
  // print(list1?.length);  // null

  // List list2 = [];
  // print(list2?.length);  // 0
}