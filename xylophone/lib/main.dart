import 'package:flutter/material.dart';

import 'button_component.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Button(Colors.red, 1),
        Button(Colors.orange, 2),
        Button(Colors.yellow, 3),
        Button(Colors.green, 4),
        Button(Colors.teal, 5),
        Button(Colors.blue, 6),
        Button(Colors.purple, 7)
      ],
    );
  }
}
