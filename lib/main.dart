import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

Expanded play(Color color, int note) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: const RoundedRectangleBorder(),
      ),
      onPressed: () {
        final player = AudioCache();
        player.play('note$note.wav');
      },
      child: const Text(''),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              play(Colors.red, 1),
              play(Colors.orange, 2),
              play(Colors.yellow, 3),
              play(Colors.green, 4),
              play(Colors.blue, 5),
              play(Colors.indigo, 6),
              play(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
