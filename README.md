# Dart-Study
Dart-Study

### Hello World
```
void main() {
  print("Hello Dart !!!");
}

// 单行注释

/*
 多行注释
*/

/// 文档注释
```

### 内置数据类型
- 数值num
    - int
    - double
- String
- bool
- List
- Map
- Runes
没有初始化默认值为Null

### 变量与常量 [day1/demo1.dart]
变量定义
```
String name = "张十三";
print(name);

var name2 = "王五";

dynamic name3 = "老王";
name3 = 12;
Object name5 = 12;
name5 = "赵二";
```
常量定义
```
final time = new DateTime.now(); // 正确  (定义一次 运行时不可修改)
const time = new DateTime.now(); // 错误  (不可赋动态值)
```

### 基本类型 [day1/demo2.dart]
- num
- String
- bool
- list
- map 
```
num a = 123;
String b = "1212";
bool fal; // is null 
var c = [1,2,3,4,5];
var b = {
    'a':'aaa',
    'b':'bbb'
};
var d = new Map();
d['ac'] = 'aaa';
```
### 函数 [day1/demo3.dart]
```
num ({num a,num b=22}) {
    return a + b;
}

var a = (int a,int b) {
    return a + b;
};

ac(int a,int b) =>  a + b;
```
### 运算符 [day1/demo4.dart]
``` 
new Person()..setName("Bob")..setAge(20)..save();

// // list1默认值为null
// List list1;
// print(list1?.length);  // null

// List list2 = [];
// print(list2?.length);  // 0

// 如果str1 is！ null == false , return str1  else return str2.toUpperCase();
var result = str1 ?? str2.toUpperCase();

// 三目表达式
// condition ? expr1 : expr2

// 非空条件判断符??
// expr1 ?? expr2
```

### 分支与循环 [day1/demo5.dart]
```
for (int i=0;i<9;i++) {
    print(i);
}

var a = [1,2,3];
for (var i in a) {
    print(i);
}

var myMap = {
    "zs":123213214,
    "ff":325435345,
    "vv":5467567657
};
myMap.forEach((k,v)=>print("$k : %v"));

for (var k in myMap.keys) {
print("$k: ${myMap[k]}");
}
```
## class
### class 基础 [day2/demo1.dart]
```
class User {
  String username;
  int uuid;
  User(this.username,this.uuid);
}
dart 默认是隐式get/set
```
### class 继承相关 && 接口抽象 && 泛型 && 枚举 [day2/demo2.dart]
继承:
子类之基础父类不带参构造方法
如果父类没有不带参构造就会出错
接口:
Dart语言没有提供interface关键字来定义接口，但是Dart语言中保留了抽象类，同Java，使用abstract关键字来修饰抽象类。而Dart中的抽象类，实际上就相当于Java中的接口。
泛型:
```
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
```
枚举:
```
enum Month{
  January,
  February,
}

Month.February;
```
### 异常处理 & 库导入导出 [day2/demo3.dart]
异常处理:
1.如果关心具体异常，针对不同异常进行不同处理，可以使用try...on处理异常，finally是可选的，用于最后的处理。
2.不关心具体异常，只想捕获，避免异常继续传递，则可以使用try...catch处理
导入：
为了减少 APP 的启动时间，加载很少使用的功能，我们还可以延迟导入库。使用 deferred as关键字延迟导入
`import 'package:deferred/hello.dart' deferred as hello;`

### 异步  (非共享内存的协程) [day2/demo4.dart]
Dart中的所有代码都只在一个线程上运行，但Dart代码可以运行在多个isolate上。isolate可以看做一个微小的线程，isolate由虚拟机调度，isolate之间没有共享内存，因此它们之间没有竞争
