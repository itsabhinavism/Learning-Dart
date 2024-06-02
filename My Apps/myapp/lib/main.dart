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
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Image.asset(
                  'assets/images/menu.png',
                  width: 5,
                  height: 5,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Image.asset(
                  'assets/images/search.png',
                  width: 5,
                  height: 5,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Container(
                  width: 1,
                  height: 1,
                  child: Image.asset(
                    'assets/images/add.png',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                child: Image.asset(
                  'assets/images/setting.png',
                  width: 5,
                  height: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
