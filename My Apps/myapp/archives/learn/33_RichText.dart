import 'package:flutter/material.dart';
//import 'widgets/rounded_btn.dart';//
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: RichText/*default textstyle*/(
            text: const TextSpan(
                style: TextStyle(color: Colors.red, fontSize: 11),
                children: <TextSpan>[
              TextSpan(text: 'Helllo'),
              TextSpan(
                  text: 'World',
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Welcome to Flutter',
                  style: TextStyle(
                      fontSize: 45,
                      color: Color.fromARGB(255, 22, 198, 75),
                      fontWeight: FontWeight.bold))
            ])));
  }
}
