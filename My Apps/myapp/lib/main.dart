import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        primarySwatch: Colors.lightGreen,
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
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('Date Selector',style: TextStyle(color:Colors.white,fontFamily: 'cursive1',fontSize:30)),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.lightGreen,
          elevation: 20,
          child: Container(
            width: 250,
            height: 115,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select date',
                    style: TextStyle(fontSize: 30, color: Colors.lightGreen, fontFamily: 'cursive1' ),
                  ),
                  Container(height: 5),
                  ElevatedButton(
                      onPressed: () async {
                        DateTime? datePicked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2021),
                            lastDate: DateTime(2025));

                        if (datePicked != null) {
                          print(
                              'Date selected: ${datePicked.day}--${datePicked.month}--${datePicked.year}');
                        }
                      },
                      child: Text('Calendar')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
