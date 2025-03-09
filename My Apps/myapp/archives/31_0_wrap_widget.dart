import 'package:flutter/material.dart';
import 'widgets/rounded_btn.dart';

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
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Wrap(
                direction: Axis.horizontal,
                spacing: 11,
                runSpacing: 11,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 60, 255, 30),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 8, 36, 222),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 235, 6, 185),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 235, 82, 6),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 6, 220, 235),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 235, 6, 6),
                  ),
                ])));
  }
}
