import 'package:flutter/material.dart';
import '30_2_rounded_btn.dart';


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
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 70,
              child: RoundedButton(
                btnName: 'Login',
                icon: Icon(Icons.lock),
                bgColor: Colors.green, // Set the background color here
                callBack: () {
                  print('Logged in!');
                },
              ),
            ),
            Container(height: 10),
            Container(
              width: 250,
              height: 70,
              child: RoundedButton(
                btnName: 'Play',
                bgColor: Colors.orange, // Set the background color here
                icon: Icon(Icons.play_arrow),
                callBack: () {
                  print('Playing...');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
