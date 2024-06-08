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
        appBar: AppBar(),
        body: Center(
          child: Card(
            shadowColor: Colors.lightGreen,
            elevation: 30,
            child: Container(
              width: 400,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Current Time --> ',
                        style:
                            TextStyle(fontSize: 25, color: Colors.lightGreen),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  '${time.hour}hr ${time.minute}min ${time.second}s',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Container(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Refresh"))
                ],
              ),
            ),
          ),
        ));
  }
}
