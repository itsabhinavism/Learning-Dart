import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );

  // Remove splash screen after delay
  Future.delayed(const Duration(seconds: 1), () {
    FlutterNativeSplash.remove();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
          create: (_) => CounterProvider(),
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build Function called!!");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          //string
          '${Provider.of<CounterProvider>(context, listen: true).getCount()}',
          style: const TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

//full page is getting rebuild just for one widget which is not efficient so we will use consumer(dividing the context into parts).
//1:03
