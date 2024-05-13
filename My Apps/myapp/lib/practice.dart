import 'dart:io';

void main () {
  print ('welcome to dart!');
  stdout.write ('Enter the name : ');
  //stdin
var name = stdin.readLineSync();
print('Welcome $name');


} 