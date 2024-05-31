
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
    int divisor = 2; // Define your divisor here

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (index % divisor == 0) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _getRowChildren(arrNames, index),
              ),
            );
          } else {
            return Row(
              children: _getRowChildren(arrNames, index),
            );
          }
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 300,
            thickness: 5,
            color: const Color.fromARGB(255, 0, 0, 0),
          );
        },
      ),
    );
  }

  List<Widget> _getRowChildren(List<String> arrNames, int index) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              arrNames[index],
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                arrNames[index],
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2),
        child: Text(
          arrNames[index],
          style: TextStyle(fontSize: 25),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              arrNames[index],
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                arrNames[index],
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    ];
  }
}

