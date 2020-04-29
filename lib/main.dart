import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Expanded buildKey({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        child: null,
        onPressed: () {
          final player = AudioCache();
          player.play("note$noteNumber.wav");
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteNumber: 1, color: Colors.red),
              buildKey(noteNumber: 2, color: Colors.orange),
              buildKey(noteNumber: 3, color: Colors.yellow),
              buildKey(noteNumber: 4, color: Colors.green),
              buildKey(noteNumber: 5, color: Colors.teal),
              buildKey(noteNumber: 6, color: Colors.blue),
              buildKey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
