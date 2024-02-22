import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

Expanded Button(Color x, int wav) {
  return Expanded(
    child: OutlinedButton(
      style: ButtonStyle(enableFeedback: false),
      onPressed: () {
        Audio a = Audio.load('assets/note$wav.wav');
        a.play();
      },
      child: Container(
        color: x,
      ),
    ),
  );
}
