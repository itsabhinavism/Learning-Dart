import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

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
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headlineSmall:
                TextStyle(fontSize: 101, fontWeight: FontWeight.bold),
            headlineMedium: TextStyle(color:Colors.red,
                fontSize: 51,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )),
      home: const MyHomePage(title: 'Home'),
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
        title: const Text('Home Page'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Text(
            "Hello",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "Hello",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "Hello",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.blue, fontStyle: FontStyle.italic),
          ),
          Text(
            "Hello",
            style: mText21(),
          ),

           Text(
            "Hello",
            style: mText11(textColor:const Color.fromARGB(255, 33, 243, 142)),
          ),
        ],
      ),
    );
  }
}
