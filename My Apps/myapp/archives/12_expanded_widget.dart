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
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Home Page'),
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
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(children: [
Expanded(flex:2, child: Container(height:100,color:Colors.blue),),
Expanded(flex:4,child: Container(height:100,color: Colors.orange),),
Expanded(flex:2, child: Container(height:100,color:Colors.blueGrey),),
Expanded(flex:1, child: Container(height:100,color: Colors.green),),
      ],)
    );
  }
}
