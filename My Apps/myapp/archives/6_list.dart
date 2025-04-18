
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
          title: const Text('Home Page', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          children: const [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("One",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.red,
                        fontWeight: FontWeight.w400))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Two",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.red,
                        fontWeight: FontWeight.w400))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Three",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.red,
                        fontWeight: FontWeight.w400))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Four",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.red,
                        fontWeight: FontWeight.w400))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Five",
                    style: TextStyle(
                        fontSize: 35,
                        
                        color: Colors.red,
                        fontWeight: FontWeight.w400))),
          ],
        ));
  }
}
