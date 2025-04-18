
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
        title: const Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/Flutter.png'),
              ),
              color: const Color.fromARGB(255, 38, 38, 38),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)),
              border: Border.all(
                  width: 2, color: const Color.fromARGB(255, 255, 255, 255)),
              boxShadow: const [
                BoxShadow(blurRadius: 21, color: Colors.green, spreadRadius: 7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
