import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      theme: ThemeData(),
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
    var arrColors = [
      Colors.black,
      const Color.fromARGB(255, 0, 234, 255),
      Colors.green,
      const Color.fromARGB(255, 0, 255, 30),
      Colors.yellow,
      Colors.pink,
      Colors.blueAccent,
      Colors.purple,
      Colors.red,
      Colors.orange
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View',
            style: TextStyle(
                color: Colors.white, fontFamily: 'font1', fontSize: 30)),
        backgroundColor: Colors.lightGreen,
      ),
      body: GridView.builder( itemBuilder:(context,index){
        return Container(color:arrColors[index],);
      }, itemCount: arrColors.length, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing:11,
        crossAxisCount:3,
        mainAxisSpacing:11,
      ),
    ),);
  }
}
