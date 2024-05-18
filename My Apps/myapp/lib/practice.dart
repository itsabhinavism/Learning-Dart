import 'dart:io';

void main() {
  print("Welcome to Dart Abhinav!");
  var uid;

  uid = "--> Userid: infinitepov";
  print("$uid");

  uid = 21;
  print("--> Age: $uid");
  print(" ");

  var myC = myClass();
  myC.printName("Abhinav Anand");
  myC.printName("Flutter Developer");
}

class myClass {
  void printName(String name) {
    print(name);
  }
}
