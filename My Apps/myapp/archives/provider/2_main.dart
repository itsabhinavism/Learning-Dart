import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'list_map_provider.dart';
import 'list_page.dart';

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
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => ListMapProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => CounterProvider(),
            ),
          ],
          child: ListPage(),
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
      body: Center(child: Consumer<CounterProvider>(builder: (ctx, _, __) {
        print("Consumer Build Function called!!");
        return Text(
          //string
          //'${Provider.of<CounterProvider>(ctx, listen: true).getCount()}',
          '${ctx.watch<CounterProvider>().getCount()}',
          style: const TextStyle(fontSize: 25),
        );
      })),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        FloatingActionButton(
          onPressed: () {
            //Provider.of<CounterProvider>(context, listen: false).incrementCount();
            context.read<CounterProvider>().decrementCount();
          },
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () {
            //Provider.of<CounterProvider>(context, listen: false).incrementCount();
            context.read<CounterProvider>().incrementCount(5);
          },
          child: const Icon(Icons.add),
        )
      ]),
    );
  }
}

//full page is getting rebuild just for one widget which is not efficient so we will use consumer(dividing the context into parts).
//1:03
