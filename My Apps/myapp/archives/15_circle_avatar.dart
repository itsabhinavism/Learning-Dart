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
        primarySwatch: Colors.purple,
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
    var arrNames = [
      'Abhinav',
      'Abhishek',
      'Aditya',
      'Aman',
      'Abhay',
      'Ashish',
      'Abhinandan',
      'Shresth',
      'Rudra'
    ];

    var arrJobs = [
      'Photographer',
      'Engineer',
      'Doctor',
      'SalesMan',
      'Graphic Designer',
      'Programmer',
      'Musician ',
      'Web Developer',
      'Android Developer',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: CircleAvatar(
          child: Container(
            width: 120,
            height:120,child:Center(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/icons/Flutter.png'),
                  ),
                ),
              ],
            ),),
          ),
          backgroundColor: Colors.black,
          maxRadius: 80,
        ),
      ),
    );
  }
}
