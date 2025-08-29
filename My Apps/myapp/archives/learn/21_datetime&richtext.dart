
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        primarySwatch: Colors.lightGreen,
      ),
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

    return Scaffold(
        appBar: AppBar(title: const Text('Current Time Finder'),
        backgroundColor: Colors.lightGreen,),
        body: Center(
          child: Card(
            shadowColor: Colors.lightGreen,
            elevation: 30,
            child: SizedBox(
              width: 350,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child:Padding(padding: const EdgeInsets.all(8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Current Time --> ',
                        style:
                            const TextStyle(fontSize: 20, color: Colors.lightGreen),
                        children: <TextSpan>[
                          TextSpan(
                               text: DateFormat('jms').format(time),
                              style: const TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),),
                  ),
                  Container(height: 7),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text("Refresh"))
                ],
              ),
            ),
          ),
        ));
  }
}
