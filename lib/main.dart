import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int idx) {
    final player = AudioPlayer();
    player.play(AssetSource('note$idx.wav'));
  }

  Expanded buildButton(int idx, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {playSound(idx);},
        child: Text(''),
        style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(1,Colors.red),
              buildButton(2,Colors.orange),
              buildButton(3,Colors.yellow),
              buildButton(4,Colors.green),
              buildButton(5,Colors.teal),
              buildButton(6,Colors.blue),
              buildButton(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
