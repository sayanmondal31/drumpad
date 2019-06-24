import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(DrumSound());

class DrumSound extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('sound$soundNumber.wav');
  }

  Expanded placePads({Color color, int snum}) {
    return Expanded(
      child: FlatButton(
        splashColor: Colors.indigoAccent,
        color: color,
        onPressed: () {
          playSound(snum);
        },
        // child: Text('$snum'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    placePads(color: Colors.brown, snum: 9),
                    placePads(color: Colors.black87, snum: 2),
                    placePads(color: Colors.cyan[200], snum: 3),
                    placePads(color: Colors.cyan[100], snum: 4),
                    placePads(color: Colors.black87, snum: 5),
                    placePads(color: Colors.brown, snum: 12),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    placePads(color: Colors.brown[900], snum: 7),
                    placePads(color: Colors.brown, snum: 8),
                    placePads(color: Colors.brown, snum: 1),
                    placePads(color: Colors.brown, snum: 10),
                    placePads(color: Colors.brown, snum: 11),
                    placePads(color: Colors.brown[900], snum: 6),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
