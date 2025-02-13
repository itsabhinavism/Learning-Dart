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
    var arrNames = ["Abhinav", "Abhishek ", "Aditya", "Aman", "Ashish"];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            );
          },
          itemCount: arrNames.length,
          itemExtent: 70,
          scrollDirection: Axis.vertical,
        ));
  }
}
