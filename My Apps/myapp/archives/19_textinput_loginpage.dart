import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var phno = TextEditingController();
    var pw = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center( child: Container(width:380,height:300,margin: EdgeInsets.all(8),child:Padding(padding: EdgeInsets.all(10), child: Card( 
          shadowColor: Colors.lightGreen,
          elevation: 10,
          child: Container(
              width: 10,margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.phone,
                    controller: phno,
                    decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.lightGreen, width: 2)),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 103, 103, 103),
                              width: 2)),

                      //suffixText: "Phone number",

                      suffixIcon: Container(
                        height: 40,
                        width: 50,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Image.asset(
                              'assets/images/icons/eye-regular.png',
                              color: Color.fromARGB(255, 103, 103, 103)),
                        ),
                      ),

                      prefixIcon: Container(
                        width: 50,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Image.asset(
                              'assets/images/icons/phone-solid.png',
                              color: Color.fromARGB(255, 103, 103, 103)),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 13),
                  TextField(
                    controller: pw,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.lightGreen, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 103, 103, 103),
                              width: 2)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 103, 103, 103),
                              width: 2)),
                      prefixIcon: Container(
                        width: 50,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Image.asset(
                              'assets/images/icons/key-solid.png',
                              color: Color.fromARGB(255, 103, 103, 103)),
                        ),
                      ), suffixIcon: Container(
                        width: 30,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Image.asset(
                              'assets/images/icons/lock-solid.png',
                              color: Color.fromARGB(255, 103, 103, 103)),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 20),

                  Container(width:1000,child:
                  ElevatedButton(
                      onPressed: () {
                        String uPhNo = phno.text.toString();
                        String uPw = pw.text;

                        print("Phone Number: $uPhNo, Password: $uPw");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(title: 'Home')),
                        );
                      },
                      child: Text("Login",
                          style: TextStyle(color: Colors.lightGreen))),),

                          Container(height:10),
                         Center( 
                          child: Text('Forgotten your password?', style: TextStyle(fontSize:12,
                          fontStyle:FontStyle.italic,color:Colors.grey)),),
                ],
              )),),),),
        ));
  }
}
