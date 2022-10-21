import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/01-contador/contador_view.dart';
import 'package:getx_intro/02-actualizar-id/contador_id_view.dart';
import 'package:getx_intro/03-ciclo-de-vida/splash_view.dart';
import 'package:getx_intro/04-consumo-api/user_view.dart';
import 'package:getx_intro/06-reactivos/api-reactivo/user_reactivo_view.dart';
import 'package:getx_intro/06-reactivos/contador_reactivo_view.dart';
import 'package:getx_intro/07-custompainter/headers-diagonal.dart';
import 'package:getx_intro/07-custompainter/headers-pico.dart';

// open ios/Runner.xcodeproj
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HeadersPico(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
