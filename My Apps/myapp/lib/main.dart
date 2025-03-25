import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 21, 247, 255)),
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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          backgroundColor: const Color.fromARGB(255, 191, 154, 255),
        ),
        body: ConstrainedBox(
            constraints: BoxConstraints(
              
              maxWidth: 90,
            
              maxHeight: 90,
            ),
            child:
            ElevatedButton(onPressed: () {}, child: Text('Clicrld vv vHello WorldHello WorldHello WorldHello WorldHello WorldHello World vv vHello WorldHello WorldHello WorldHello WorldHello WorldHello Wok', overflow: TextOverflow.fade)
            )));
  }
}
