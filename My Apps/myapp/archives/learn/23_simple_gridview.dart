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
      theme: ThemeData(),
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
    var time = DateTime.now();
    var arrColors = [
      Colors.black,
      const Color.fromARGB(255, 0, 234, 255),
      Colors.green,
      const Color.fromARGB(255, 0, 255, 30),
      Colors.yellow,
      Colors.pink,
      Colors.blueAccent,
      Colors.purple,
      Colors.red,
      Colors.orange
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View',
            style: TextStyle(
                color: Colors.white, fontFamily: 'font1', fontSize: 30)),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(child:Padding(padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: GridView.extent(
            
            maxCrossAxisExtent:200,
            crossAxisSpacing: 21,
            mainAxisSpacing: 21,
            children: [
              Container(
                color: arrColors[1],
              ),
              Container(
                color: arrColors[2],
              ),
              Container(
                color: arrColors[3],
              ),
              Container(
                color: arrColors[4],
              ),
              Container(
                color: arrColors[5],
              ),
              Container(
                color: arrColors[6],
              ),
              Container(
                color: arrColors[7],
              ),
              Container(
                color: arrColors[8],
              ),
              Container(
                color: arrColors[4],
              ),
              Container(
                color: arrColors[3],
              ),
              Container(
                color: arrColors[2],
              ),
              Container(
                color: arrColors[1],
              ),
            ],
          ),
        ),),
      ),
    );
  }
}
