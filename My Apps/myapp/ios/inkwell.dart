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
        body: Center(
          child : InkWell(
            onTap: () {
              print("Tapped on container.");},
            onLongPress: () {
              print("Long tapped on container.");},
              onDoubleTap: () {
                print("Double tapped on container.");},
              
          child: Container(
            width :200,
            height : 200,color: Colors.amber,
            child: InkWell (
              onTap : () {
                print("Text widget tapped.");},

                child : Text("Click Here", style : TextStyle (fontSize : 21,  fontWeight : FontWeight.w800),
                ))),),),);}}
