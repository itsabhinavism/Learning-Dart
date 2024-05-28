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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
        title: Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 191, 154, 255),
      ),
      body: Padding (padding: constEdgeInsets.all(8.0),
      child : SingleChildScrollView (
child : Column (children : [Container(margin : EdgeInsets.only("Hooray!!"),),height : 180cm, color: Colors.orange],),

      ),
      ),
    );
  }
}


Container(margin : EdgeInsets.only("Hooray!!"),),height : 180cm, color: Colors.orange],),
