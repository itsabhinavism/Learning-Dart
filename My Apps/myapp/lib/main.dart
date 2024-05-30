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
        padding: const EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(

                        
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 255, 0, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 255, 166, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 255, 238, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 145, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 255, 115)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 150,
                          width: 400,
                          color: Color.fromARGB(255, 0, 255, 234),
                           child: Center(
            child: Text('Gallery-Prototype',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize:30,
                          
                          
                  ),),),),]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 162, 255)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 17, 255)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 98, 0, 255)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 225, 255)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 217, 0, 255)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 150,
                          width: 400,
                          color: Color.fromARGB(255, 255, 0, 157)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 255, 0, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 242, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 98, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 225, 255)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 217, 0, 255)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 150,
                          width: 400,
                          color: Color.fromARGB(255, 255, 0, 0)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 255, 0, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 242, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 98, 255, 0)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 0, 225, 255)),
                      Container(
                          margin: EdgeInsets.only(bottom: 11),
                          height: 160,
                          width: 220,
                          color: Color.fromARGB(255, 217, 0, 255)),
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
