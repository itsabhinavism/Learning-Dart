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
        body: Container(
            color: const Color.fromARGB(255, 121, 184, 236),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(200.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                              keyboardType: TextInputType.number,
                              controller: no1Controller),
                          TextField(
                              keyboardType: TextInputType.number,
                              controller: no2Controller),
                          Padding(
                              padding: const EdgeInsets.all(21.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          var no1 = int.parse(
                                              no1Controller.text.toString());
                                          var no2 = int.parse(
                                              no2Controller.text.toString());

                                          var sum = no1 + no2;
                                          result =
                                              "The sum of $no1 and $no2 is $sum";
                                          setState(() {});
                                        },
                                        child: Text('Add')),
                                    ElevatedButton(
                                        onPressed: () {
                                          var no1 = int.parse(
                                              no1Controller.text.toString());
                                          var no2 = int.parse(
                                              no2Controller.text.toString());
                                          var difference = no1 - no2;
                                          result =
                                              "The difference of $no1 - $no2 is $difference.";
                                          setState(() {});
                                        },
                                        child: Text('Sub')),
                                    ElevatedButton(
                                        onPressed: () {
                                          var no1 = int.parse(
                                              no1Controller.text.toString());
                                          var no2 = int.parse(
                                              no2Controller.text.toString());
                                          var product = no1 * no2;
                                          result =
                                              "The product of $no1 and $no2 is $product.";
                                          setState(() {});
                                        },
                                        child: Text('Mult')),
                                    ElevatedButton(
                                        onPressed: () {
                                          var no1 = int.parse(
                                              no1Controller.text.toString());
                                          var no2 = int.parse(
                                              no2Controller.text.toString());
                                          var divisor = no1/no2;
                                          result =
                                              "The quotient of $no1 and $no2 is $divisor.";setState((){});
                                        },
                                        child: Text('Div')),
                                  ])),
                          Padding(
                            padding: const EdgeInsets.all(21.0),
                            child: Text(
                              result,
                              style: TextStyle(fontSize: 25),
                            ),
                          )
                        ])))));
  }
}
