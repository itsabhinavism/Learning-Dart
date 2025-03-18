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
        body: RichText(text: const TextSpan(
          style: TextStyle (color: Colors.red, fontSize:11),
          children: <TextSpan> [TextSpan(text:'Hello'), TextSpan(text: 'Hello 2', style: TextStyle(fontSize:12,fontWeight: FontWeight.bold, color: Colors.green,))]
        ))
        
        
        
        
        );
  }
}
