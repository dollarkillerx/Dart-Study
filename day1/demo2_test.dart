void main() {
  num c = int.parse("1213");
  print("int c: " + c.toString());
  c = double.parse("132.1212");
  print("double c: " + c.toStringAsFixed(2));
  var a = [1,2,3,4,5,6,7,8,9,10,11];
  var b = {
    "name":'akg'
  };
  var d = new Map();
  d["name"] = "ssr";
  print(d);
  print(a);
}