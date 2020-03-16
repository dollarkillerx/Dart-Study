import 'dart:io';

// 模拟耗时,调用sleep
doTask() async {
  await sleep(const Duration(seconds:2));
  return "OK";
}

test() async {
  var r = await doTask();
  print(r);
}

void main() {
  print("main start");
  test();
  print("main end");
}