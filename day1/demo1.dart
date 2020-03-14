void main() {
  

}

/// 变量定义
void t1() {
  // dart 是强类型的  但是会进行类型推导

// 1. 通过显式定义变量
  String name = "张三";
  num age = 18;

// 2.使用关键字var 不指定类型
  var address = "星辰大海";
  var id = 100;

/*
  使用var 定义变量,即使未明显指定类型,一旦赋值后类型就会被固定
  因此使用var定义的变量不能改变数据类型
*/
  var number = 19;
// 一下代码错误  无法运行 number变量以确定为int类型
//number = "2019";

// 如果想要动态改变变量
// 可以使用dynamic 或者 Object 来定义变量
  dynamic var1 = "Hello World";
  var1 = 1232;
  print(var1);

  Object var2 = 20;
  var2 = "dynamic";
  print(var2);
}

// 常量定义
var t2() {
  final height = 100;

  const pi = 3.14;
  /*
    final 和 const 都是定义常量
    final 定义运行时常量
    const 定义初始常量

    final 就是一个变量
  */

  final time = new DateTime.now(); // 正确  (定义一次 运行时不可修改)
  const time = new DateTime.now(); // 错误  (不可赋动态值)
  
}