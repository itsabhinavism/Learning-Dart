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
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  print("Tapped on Red container.");
                },
                onLongPress: () {
                  print("Long tapped on Red container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Red container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 0, 0)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Yellow container.");
                },
                onLongPress: () {
                  print("Long tapped on Yellow container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Yellow container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 120,
                    width: 140,
                    color: Color.fromARGB(255, 242, 255, 0)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Green container.");
                },
                onLongPress: () {
                  print("Long tapped on Green container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Green container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 140,
                    width: 180,
                    color: Color.fromARGB(255, 98, 255, 0)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Cyan container.");
                },
                onLongPress: () {
                  print("Long tapped on Cyan container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Cyan container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 160,
                    width: 220,
                    color: Color.fromARGB(255, 0, 225, 255)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Blue container.");
                },
                onLongPress: () {
                  print("Long tapped on Blue container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Blue container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 180,
                    width: 260,
                    color: Color.fromARGB(255, 0, 85, 255)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Pink container.");
                },
                onLongPress: () {
                  print("Long tapped on Pink container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Pink container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 300,
                    color: Color.fromARGB(255, 234, 0, 255)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Purple container.");
                },
                onLongPress: () {
                  print("Long tapped on Purple container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Purple container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 220,
                    width: 340,
                    color: Color.fromARGB(255, 102, 0, 255)),
              ),
              InkWell(
                onTap: () {
                  print("Tapped on Cyan-Green container.");
                },
                onLongPress: () {
                  print("Long tapped on Cyan-Green container.");
                },
                onDoubleTap: () {
                  print("Double tapped on Cyan-Green container.");
                },
                child: Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 240,
                    width: 380,
                    color: Color.fromARGB(255, 138, 255, 206)),
              ),
            ],
          ),
        ),),
      )
    );
  }
}
