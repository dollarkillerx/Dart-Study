const time1 = "2020";
final time2 = new DateTime.now();

void main() {
  // test1();
  test2();
  test3();
  test4();
  test5();
  print(time1);
  print(time2);
}

void test1() {
  String name = "Dart";
  print("Hello" + name);
}

void test2() {
  num c = 12.15;
  print(c);
}

void test3() {
  var a = 12.15;
  a = 121;
  print(a);
}

void test4() {
  dynamic a = "你大爷";
  a = 666;
  print(a);
}

void test5() {
  Object aaa = 1212;
  aaa = "我是你大爷";
  print(aaa);
}