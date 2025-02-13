import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var phno = TextEditingController();
    var pw = TextEditingController();

    return  Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SizedBox(
            width: 350,
            height: 360,
        
            child: Padding(
              padding: const EdgeInsets.only(top:15,bottom:15),
              child: Card(
                shadowColor: Colors.lightGreen,
                elevation: 10,
                child: Container(
                  width: 10,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 50,
                          width: 300,
                          child:
                            const Padding (padding: EdgeInsets.only(right: 150),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 45,
                                  fontFamily:'cursive1',
                                  color: Colors.lightGreen),
                            ),),
                          ),

                          Container(height:12),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: phno,
                        decoration: InputDecoration(
                          hintText: 'Enter Phone Number',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Colors.lightGreen, width: 2)),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 103, 103, 103),
                                  width: 2)),

                          //suffixText: "Phone number",

                          suffixIcon: SizedBox(
                            height: 40,
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Image.asset(
                                  'assets/images/icons/eye-regular.png',
                                  color: const Color.fromARGB(255, 103, 103, 103)),
                            ),
                          ),

                          prefixIcon: SizedBox(
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Image.asset(
                                  'assets/images/icons/phone-solid.png',
                                  color: const Color.fromARGB(255, 103, 103, 103)),
                            ),
                          ),
                        ),
                      ),
                      Container(height: 15),
                      TextField(
                        controller: pw,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Colors.lightGreen, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 103, 103, 103),
                                  width: 2)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 103, 103, 103),
                                  width: 2)),
                          prefixIcon: SizedBox(
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Image.asset(
                                  'assets/images/icons/key-solid.png',
                                  color: const Color.fromARGB(255, 103, 103, 103)),
                            ),
                          ),
                          suffixIcon: SizedBox(
                            width: 44,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Image.asset(
                                  'assets/images/icons/lock-solid.png',
                                  color: const Color.fromARGB(255, 103, 103, 103)),
                            ),
                          ),
                        ),
                      ),
                      Container(height: 13),
                      SizedBox(
                        width: 1000,
                        child: ElevatedButton(
                          onPressed: () {
                            String uPhNo = phno.text.toString();
                            String uPw = pw.text;

                            print("Phone Number: $uPhNo, Password: $uPw");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MyHomePage(title: 'Home')),
                            );
                          },
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.lightGreen),
  
                        ),
                          child: Text("Submit",style: TextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
      )),
                        ),
                      ),
                      Container(height:9),
                      const Center(child: Column(children:[
                        Text('Forgotten your password? Eat almonds daily...',
                            style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey)),],),
                      ),Container(height:9),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
