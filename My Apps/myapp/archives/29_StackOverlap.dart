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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact List', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 168, 110, 255),
        ),
        body: SizedBox(
          width: 300,
          height: 300,
          child: Stack(children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              left: 21,
              top: 21,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
            )
          ]),
        ));
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
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 204, 170, 255),
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: 80,
            child: CircleAvatar(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(arrPfp[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
        itemCount: arrPfp.length,
        scrollDirection: Axis.horizontal,
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
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${index + 1}.  '),
                CircleAvatar(
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(arrPfp[index]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Text(arrNames[index]),
            subtitle: Text(arrJobs[index]),
            trailing: const Icon(Icons.add),
          ),
        ),
        itemCount: arrNames.length,
      ),
    );
  }
}
