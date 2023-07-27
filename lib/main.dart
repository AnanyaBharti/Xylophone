import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

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
        backgroundColor: Colors.white,
        body: Column(
          children: const [
            MusicTile(number: 1, color: Colors.purple),
            MusicTile(number: 2, color: Color(0xFFB56611)),
            MusicTile(number: 3, color: Colors.blue),
            MusicTile(number: 4, color: Color(0xFFC8DD0F)),
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
    );
  }
}

class MusicTile extends StatelessWidget {
  final int number;
  final Color color;
  const MusicTile({super.key, required this.number, required this.color});
  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () async => playSound(number),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white, color],
            ),
          ),
        ),
      ),
    );
  }
}
