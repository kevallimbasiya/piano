import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List audio = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav',
  ];
  List color = [
    Colors.purple,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: List.generate(
            color.length,
            (index) => Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    final player = AudioPlayer();
                    player.play(AssetSource(audio[index]));
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: color[index]),
                child: Container(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
