import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

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
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headlineSmall:
                TextStyle(fontSize: 101, fontWeight: FontWeight.bold),
            headlineMedium: TextStyle(
                color: Colors.red,
                fontSize: 51,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )),
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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Clock Widget'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: Container(
              width: 100,
              height: 100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Current Time: ${time.hour}:${time.minute}:${time.second} ",
                        style:
                            TextStyle(fontSize: 12, color: Colors.lightGreen)),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text("Current Time"))
                  ])),
        ));
  }
}
