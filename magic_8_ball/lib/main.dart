import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball!'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blue.shade400,
        body: Magic8Ball(),
      ),
    ),
  ));
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              num = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('assets/images/ball$num.png'),
        )),
      ],
    );
  }
}
