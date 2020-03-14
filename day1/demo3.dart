void main() {
  t1();
  t2();
  t3();
  t4();
  t5();
}

void t1() {
   print(hello("爸爸"));
}

String hello(String name) {
  return "Hello $name";
}


/// 命名可选参数
void t2() {
  print(add(a:10));
  print(add(a:20,c:20));
}

num add({int a,int b = 1,int c = 2}) {
  return a + b + c;
}

// 位置可选参数
void t3() {
  print(add2(12));
  print(add2(12,13));
}

num add2(int x,[int y,int z]) {
  int result = x;
  if (y != null) {
    result += y;
  }
  if (z != null) {
    result += z;
  }
  return result;
}

// 匿名函数
void t4() {
  var func = (x,y) {
    return x + y;
  };
  print(func(12,23));
}

// 箭头函数
void t5() {
  add(num x,num y) => x + y;
  print(add(23,45));
}