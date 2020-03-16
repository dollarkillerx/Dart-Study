class Person {
  String _name;
  int _age;

  // 简写构造
  Person(this._name,this._age);

  // 构造方法不能重载
  // Person(String name,int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // get/set
  set name(String name) {
    this._name = name;
  }

  String get name{
    return "thisname: " + this._name;
  }
}

class User {
  String username;
  int uuid;
  User(this.username,this.uuid);
}

// 命名构造法
class Cattle {
  String username;
  int age;
  Cattle(this.username,this.age);

  Cattle.formData(Map data) {
    this.username = data['name'];
    this.age = data['age'];
  }
}

// 常量构造法
// 如果想提供一个状态永远不变的对像，在Dart中，我们可以创建一个编译时常量对象，节省开销。
class ConstPoint {
  final num x;
  final num y;
  const ConstPoint(this.x,this.y);

  // 编译时常量对象，需使用const来创建对象
  static final ConstPoint origin = const ConstPoint(0,0);
}

// 工厂构造法
class Logger {
  final String name;

  // 创建一个静态Map作为缓存
  static final Map<String,Logger> _cache = <String,Logger>{};

  // 定义一个命名构造方法,用于下滑线"_"修饰,将构造方法私有化
  Logger._internal(this.name);

  // 使用关键字factory修饰类同名构造方法
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    }else {
      // 调用命名构造方法创建新对象
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
}

// 构造方法重定向
class Point {
  num x;
  num y;
  Point(this.x,this.y);
  Point.alongXAxis(num x):this(x,0);
}


void main() {
  var p = new Person("王五",18);
  print(p.name);

  var c = User("大王",1213);
  print(c.username);
  c.username = "小王";
  print(c.username);

  var d = Cattle.formData({
    'name':'hello',
    'age':12,
  });
  print(d.username);
}
