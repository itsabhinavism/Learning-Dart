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
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 255, 0, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 120,
                          width: 140,
                          color: Color.fromARGB(255, 242, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 140,
                          width: 180,
                          color: Color.fromARGB(255, 98, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 225, 255)),
                    ],
                  ),
                ),
              ),

Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 255, 0, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 120,
                          width: 140,
                          color: Color.fromARGB(255, 242, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 140,
                          width: 180,
                          color: Color.fromARGB(255, 98, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 225, 255)),
                    ],
                  ),
                ),
              ),



            ],

            
          ),
        ),
      )),
    );
  }
}
