import 'dart:collection';

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
    var arrNames = [
      'Abhinav',
      'Abhishek',
      'Aditya',
      'Aman',
      'Abhay',
      'Ashish',
      'Abhinandan',
      'Shresth',
      'Rudra',
      'Souptik',
    ];

    var arrJobs = [
      'Photographer',
      'Engineer',
      'Doctor',
      'SalesMan',
      'Graphic Designer',
      'Programmer',
      'Musician ',
      'Web Developer',
      'Android Developer',
      'Gamer',
    ];

    var arrPfp = [
      'assets/images/icons/user-regular.png',
      'assets/images/icons/user-tie-solid.png',
      'assets/images/icons/user-shield-solid.png',
      'assets/images/icons/user-pen-solid.png',
      'assets/images/icons/user-nurse-solid.png',
      'assets/images/icons/user-ninja-solid.png',
      'assets/images/icons/user-lock-solid.png',
      'assets/images/icons/user-graduate-solid.png',
      'assets/images/icons/user-gear-solid.png',
      'assets/images/icons/user-solid.png',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact List', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 168, 110, 255),
        ),
        body: const SizedBox( height: 700,
            child: Column(
          children: [CatItems(), Contact(), CatItems()],
        )));
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    var arrPfp = [
      'assets/images/icons/user-regular.png',
      'assets/images/icons/user-tie-solid.png',
      'assets/images/icons/user-shield-solid.png',
      'assets/images/icons/user-pen-solid.png',
      'assets/images/icons/user-nurse-solid.png',
      'assets/images/icons/user-ninja-solid.png',
      'assets/images/icons/user-lock-solid.png',
      'assets/images/icons/user-graduate-solid.png',
      'assets/images/icons/user-gear-solid.png',
      'assets/images/icons/user-solid.png',
    ];
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromARGB(255, 204, 170, 255),
        child: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: 80,
                    child: CircleAvatar(child: Container(width:20,
                          height: 20,
                      decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(arrPfp[index]),
                            ),
                          ),
                    ),),
                  ),
                ),
            itemCount: 10,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    var arrPfp = [
      'assets/images/icons/user-regular.png',
      'assets/images/icons/user-tie-solid.png',
      'assets/images/icons/user-shield-solid.png',
      'assets/images/icons/user-pen-solid.png',
      'assets/images/icons/user-nurse-solid.png',
      'assets/images/icons/user-ninja-solid.png',
      'assets/images/icons/user-lock-solid.png',
      'assets/images/icons/user-graduate-solid.png',
      'assets/images/icons/user-gear-solid.png',
      'assets/images/icons/user-solid.png',
    ];
    var arrNames = [
      'Abhinav',
      'Abhishek',
      'Aditya',
      'Aman',
      'Abhay',
      'Ashish',
      'Abhinandan',
      'Shresth',
      'Rudra',
      'Souptik',
    ];

    var arrJobs = [
      'Photographer',
      'Engineer',
      'Doctor',
      'SalesMan',
      'Graphic Designer',
      'Programmer',
      'Musician ',
      'Web Developer',
      'Android Developer',
      'Gamer',
    ];
    return Expanded(
      flex: 4,
      child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      leading:  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('${index + 1}' '.' '  '),
                      
                      
                      CircleAvatar(child: Container(width: 20,
                          height: 20,
                      decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(arrPfp[index]),
                            ),
                          ),
                      ),
                      ),],),title: Text(arrNames[index]),
                  subtitle: Text(arrJobs[index]),
                  trailing: const Icon(Icons.add),
                      
                    ),
                  ))),
    );
  }
}

