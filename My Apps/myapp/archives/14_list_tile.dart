
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
      'Rudra'
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
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50), // Add this line
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(arrNames[index]),
                  subtitle: Text(arrJobs[index]),
                  trailing: const Icon(Icons.add),
                );
              },
              itemCount: arrNames.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 20,
                  thickness: 2,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Menu.");
                    },
                    onLongPress: () {
                      print("Long tapped on Menu.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Menu.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/menu.png',
                          height: 45,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Search Bar.");
                    },
                    onLongPress: () {
                      print("Long tapped on Search Bar.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Search Bar.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/search.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Add Button.");
                    },
                    onLongPress: () {
                      print("Long tapped on Add Button.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Add Button.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/add.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Settings.");
                    },
                    onLongPress: () {
                      print("Long tapped on Settings.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Settings.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/setting.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
