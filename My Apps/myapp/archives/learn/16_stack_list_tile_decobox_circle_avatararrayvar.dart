
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50), // Add this line
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('${index + 1}' '.' '  '),
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
                );
              },
              itemCount: arrNames.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 40,
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
                      color: const Color.fromARGB(255, 168, 110, 255),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/menu.png',
                          color: const Color.fromARGB(255, 56, 56, 56),
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
                      color: const Color.fromARGB(255, 168, 110, 255),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/search.png',
                          color: const Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      print("Tapped on Favoirate Button.");
                    },
                    onLongPress: () {
                      print("Long tapped on Favoirate Button.");
                    },
                    onDoubleTap: () {
                      print("Double tapped on Favoirate Button.");
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 180, 129, 255),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/fav.png',
                          color: const Color.fromARGB(255, 56, 56, 56),
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
                      color: const Color.fromARGB(255, 180, 129, 255),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/icons/setting.png',
                          color: const Color.fromARGB(255, 56, 56, 56),
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
