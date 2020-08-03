import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(DrumSound());

class DrumSound extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('sound$soundNumber.wav');
  }

  Expanded placePads({Color color, int snum, String name}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: RaisedButton(
          elevation: 4,
          highlightElevation: 3,
          //splashColor: Colors.indigoAccent,
          //hoverColor: Colors.red,
          highlightColor: color,
          color: Colors.black45,
          onPressed: () {
            playSound(snum);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              '$name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    placePads(
                        color: Colors.pinkAccent, snum: 6, name: 'Bass Drum'),
                    SizedBox(height: 5),
                    placePads(color: Colors.green, snum: 9, name: 'High Tom'),
                    SizedBox(height: 5),
                    // placePads(color: Colors.tealAccent, snum: 2),
                    SizedBox(height: 5),
                    placePads(
                        color: Colors.purpleAccent,
                        snum: 3,
                        name: 'Crash Cymbal'),
                    SizedBox(height: 5),
                    placePads(color: Colors.cyan, snum: 4, name: 'Ride Cymbal'),
                    SizedBox(height: 5),
                    //placePads(color: Colors.yellowAccent, snum: 5,),
                    //SizedBox(height: 5),
                    //placePads(color: Colors.deepOrangeAccent, snum: 12),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    placePads(color: Colors.lime, snum: 7, name: 'Mid Tom'),
                    SizedBox(height: 5),
                    placePads(
                        color: Colors.lightGreenAccent,
                        snum: 8,
                        name: 'Snare Drum'),
                    SizedBox(height: 5),
                    placePads(color: Colors.red, snum: 1, name: 'Floor Tom'),
                    SizedBox(height: 5),
                    // placePads(color: Colors.purple, snum: 10),
                    // SizedBox(height: 5),
                    placePads(
                        color: Colors.tealAccent, snum: 11, name: 'Hi-Hat'),
                    SizedBox(height: 5),
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
