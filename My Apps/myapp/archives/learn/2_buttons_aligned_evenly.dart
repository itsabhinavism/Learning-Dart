
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
          title: const Text('Home Page'),
          backgroundColor: const Color.fromARGB(255, 191, 154, 255),
        ),
        body: SizedBox(
          width: 10000,
          height: 10000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("A")),
                  const Text(
                    'for',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'Apple',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("B")),
                  const Text(
                    'for',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'Ball',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text("C")),
              const Text(
                'for',
                style: TextStyle(fontSize: 20),
              ),
              const Text('Cat', style: TextStyle(fontSize: 20)),
              ElevatedButton(onPressed: () {}, child: const Text("D")),
              const Text(
                'for',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'Doll',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
