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
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.cyan,
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Button",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
