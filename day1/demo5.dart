void main() {
  test1();
  test2();
  test3();
  test4();
}

// if else 
void test1() {
  var a = (int i){
    if (i < 0) {
      return false;
    }else {
      return true;
    }
  };

  print(a(12));
}

// switch
void test2() {
  var a = (String abc) {
    switch(abc) {
      case "CLOSE":
        return "colse over";
      case "OPEN":
        return "open over";
      default:
        return "default";
    }
  };
  print(a("CLOSE"));
}

// 循环
void test3() {
  for (int i=0;i<9;i++) {
    print(i);
  }

  num a = 1;
  bool jsq = true;
  while (jsq) {
    a ++;
    print(a);
    if (a > 20)  {
      jsq = false;
    }
  }

  do {

  }while (false);
}

// 循环pro
void test4() {
  var cList = ['golang','php','node','dart'];
  for (var it in cList) {
    print(it);
  }

  cList.forEach((var it) {
    print(it);
  });

  cList.forEach((it)=>print(it));

  var myMap = {
    "zs":123213214,
    "ff":325435345,
    "vv":5467567657
  };
  myMap.forEach((k,v)=>print("$k : %v"));

  for (var k in myMap.keys) {
    print("$k: ${myMap[k]}");
  }

}

