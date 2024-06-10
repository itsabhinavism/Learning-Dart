import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl_browser.dart';

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
    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(title: Text('Current Time Finder'),
        backgroundColor: Colors.lightGreen,),
        body: Center(
          child: Card(
            shadowColor: Colors.lightGreen,
            elevation: 30,
            child: Container(
              width: 350,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child:Padding(padding: EdgeInsets.all(8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Current Time --> ',
                        style:
                            TextStyle(fontSize: 20, color: Colors.lightGreen),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  '${time.hour}hr ${time.minute}min ${time.second}s',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),),
                  ),
                  Container(height: 7),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Refresh"))
                ],
              ),
            ),
          ),
        ));
  }
}
