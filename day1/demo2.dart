void main() {
  print("Test Num: ");
  testNum();
  print("Test String: ");
  testString();
  print("Test Bool: ");
  testBool();
  print("Test List: ");
  testList();
  print("Test Map: ");
  testMap();
}

void testNum() {
  // String to Int 
  var one = int.parse('1314');
  print(one);

  // String to Double 
  var onePointOne = double.parse('3.1415926');
  print(onePointOne);

  // int to String
  String oneAsStr = 1314.toString();
  print(oneAsStr);

  // double to String
  String piAsStr = onePointOne.toStringAsFixed(2); // 保留小数点后两位

  // Dart 整数位操作
  print((3 << 1) == 6);  // 0011 << 1 == 0110
  print((3 >> 1) == 1);  // 0011 >> 1 == 0001
  print((3 | 4)  == 7);  // 0011 | 0100 == 0111
}

void testString() {
  // 单双引号都可以创建字符串
  var s1 = "hello";
  var s2 = 'world';

  // 多行字符串
  var nultiLine1 = """hel
    多行字符串创建之术
  """;

  // 原始str 之术
  var path = r'D:\workspace\code';

  // str 拼接之 术
  var greet = s1 + s2;

  // 模板字符串之术
  var name = "王五";
  var nameTemplate = "Hello,${name}";
  print(nameTemplate);

  // 当仅取变量值 可以省略花括号
  var aStr = "hello$name";
  print(aStr);

  // 当拼接表达式 时  不能省略花括号
  var str1 = "link";
  var str2 = "click ${str1.toUpperCase()}";
  print(str2);

  // 比较str 内容
  print("hello" == "world");
}

void testBool() {
  bool flags;
  print(flags); // bool 默认值为null
}

void testList() {
  var list = [1,2,3];
  print(list);
  print(list[0]);
  print(list.length);

  // 添加元素
  list.add(12);
  // list 字面量前添加const 关键字 定义一个不可变的list
  var constantList = const [1,2,3];
  //constantList[1] = 2; // panic
}

void testMap() {
  // 通过自变量创建
  var gifts = {
    'first':'partridge',
    'second':'turtledoves',
    'fifth':'golden rings'
  };
  print(gifts);

  // 通过构造函数创建
  var pic = new Map();
  pic['aa'] = 'ppc';
  pic['second'] = 'turtledoves';
  print(pic.length);
  print(pic);
}

