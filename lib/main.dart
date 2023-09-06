import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int soundnumber)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }



  Expanded buildKey(Color backgroundColor,int soundnumber)
  {
    return Expanded(
      child: ElevatedButton(
        onPressed: (){
          play(soundnumber);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(Colors.redAccent,1),
                  buildKey(Colors.orange,2),
                  buildKey(Colors.green,3),
                  buildKey(Colors.yellow,4),
                  buildKey(Colors.purple,5),
                  buildKey(Colors.deepPurple,6),
                  buildKey(Colors.lightBlue,7),


                ],
              )),
        ),
          ),

    );
  }
}
