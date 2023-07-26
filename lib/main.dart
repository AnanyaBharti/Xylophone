import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // Future<void> playSound(int SoundNumber) async {
  //   final player = AudioPlayer();
  //   await player.play(
  //     AssetSource('sounds/note$SoundNumber.wav'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              MusicTile(number: 1, color: Colors.purple),
              MusicTile(number: 2, color: Colors.lime),

              MusicTile(number: 3, color: Colors.blue),

              MusicTile(number: 4, color: Colors.yellow),

              MusicTile(number: 5, color: Colors.green),

              MusicTile(number: 6, color: Colors.red),
              MusicTile(number: 7, color: Colors.pink),

              // TextButton(
              //   onPressed: () async {
              //     playSound(1);
              //   },
              //   child: Container(
              //     // height: 50,
              //     width: double.infinity,
              //     color: Colors.purple,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () async {
              //     playSound(2);
              //   },
              //   child: Container(
              //     // height: 50,
              //     width: double.infinity,
              //     color: Colors.blue.shade900,
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () async {
              //       playSound(3);
              //     },
              //     child: Container(
              //       // height: 50,
              //       width: double.infinity,
              //       color: Colors.yellow,
              //     ),
              //   ),
              // ),
              // MusicTile(),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () async {
              //       playSound(5);
              //     },
              //     child: Container(
              //       // height: 50,
              //       width: double.infinity,
              //       color: Colors.orange,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () async {
              //       playSound(6);
              //     },
              //     child: Container(
              //       // height: 50,
              //       width: double.infinity,
              //       color: Colors.red,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () async {
              //       playSound(7);
              //     },
              //     child: Container(
              //       // height: 50,
              //       width: double.infinity,
              //       color: Colors.pink,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicTile extends StatelessWidget {
  final int number;
  final Color color;
  const MusicTile({
    super.key,
    required this.number,
    required this.color,
  });
  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('sounds/note$soundNumber.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () async {
          playSound(number);
        },
        child: Container(
          // height: MediaQuery.of(context).size.height / 7,
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
