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

  print(myC.Add(5, 6));
  print(myC.Add(100, 400));
}

class myClass {
  void printName(String name) {
    print(name);
  }

  int Add(int n1, int n2) {
    int sum = n1 + n2;
    return sum;
  }

  var names = [];
  names.add("Raman");
  names.add("Ramanujan");
  names.add("Ramiz");
  names.add("Ross");

  names[2] = "Rameez";

  print("$names");
}
