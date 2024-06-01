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
        body: Container(
          width: 10000,
          height: 10000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("A")),
                  Text(
                    'for',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Apple',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("B")),
                  Text(
                    'for',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Ball',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text("C")),
              Text(
                'for',
                style: TextStyle(fontSize: 20),
              ),
              Text('Cat', style: TextStyle(fontSize: 20)),
              ElevatedButton(onPressed: () {}, child: Text("D")),
              Text(
                'for',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Doll',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
