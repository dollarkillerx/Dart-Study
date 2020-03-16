void test() {
  Stopwatch stopwatch = new Stopwatch()..start();
  for (int i=0;i<9999999999;i++) {}
  print('doSomething() executed in ${stopwatch.elapsed}');
}

class Father {
  String name;
  Father();
  void hello() {
    print("fATHER nAME: " + this.name);
  }
  void ss() {
    print("ss is good");
  }
}

class Son extends Father {

}
// 子类之基础父类不带参构造方法
// 如果父类没有不带参构造就会出错

void test1() {
  var s = Son();
  s.ss();
}

// Dart语言没有提供interface关键字来定义接口，但是Dart语言中保留了抽象类，同Java，使用abstract关键字来修饰抽象类。而Dart中的抽象类，实际上就相当于Java中的接口。
abstract class Base {
  HelloWorld();
}

class Student extends Base {
  void HelloWorld() {
    print("object");
  }
}

void ccp(Base b) {
  b.HelloWorld();
}

void test2() {
  var s = Student();
  ccp(s);
}

enum PC{
  Hello,
  World,
}


class Utt<T> {
  T element;
  void put(T element) {
    this.element = element;
  }
}

void test3() {
  var utt = Utt<String>();
  utt.put("sssss");
  print(utt.element);
}


void main() {
  // test1();
  // test2();
  test3();
}
