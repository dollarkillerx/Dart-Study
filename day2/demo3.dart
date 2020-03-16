void test1() {
  try {
    print(11~/0);
  }catch(e) {
    print(e);
  }finally {
    print("这里用来关闭资源");
  }
}

void main() {
  test1();
}