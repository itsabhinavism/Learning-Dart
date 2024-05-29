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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Color.fromARGB(255, 255, 0, 0)),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 211, 255, 50),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
              
                  color: Color.fromARGB(255, 200, 255, 249),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 43, 0, 255),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
             
                  color: const Color.fromARGB(255, 255, 0, 212),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ),
        ));
  }
}
