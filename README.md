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
