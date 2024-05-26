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
          title: Text('Home Page'),
          backgroundColor: const Color.fromARGB(255, 191, 154, 255),
        ),
        body: Container(
         
          width: 300,
          child: Row (
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
Text('A',style:TextStyle(fontSize:35),),
Text('B',style:TextStyle(fontSize:35),),
Text('C',style:TextStyle(fontSize:35),),
Text('D',style:TextStyle(fontSize:35),),

ElevatedButton(onPressed:(){},
child: Text("Tap"))
          ],
        ),
    ));

                  
                  
                  
                  
                  
        
  }
}
