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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 300,
              height: 100,
              child: Image.asset('assets/images/Flutter.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Menu.");
                    },
                    onLongPress: () {
                      print("Long tapped on Menu.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Menu.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/menu.png',
                      
                          height: 45,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Search Bar.");
                    },
                    onLongPress: () {
                      print("Long tapped on Search Bar.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Search Bar.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/search.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Add Button.");
                    },
                    onLongPress: () {
                      print("Long tapped on Add Button.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Add Button.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/add.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Settings.");
                    },
                    onLongPress: () {
                      print("Long tapped on Settings.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Settings.");
                    },
                    child: Container(
                      color: Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/setting.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
