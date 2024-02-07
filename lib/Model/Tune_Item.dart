import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneItem {
  String music;
  Color color;
  String text;
  TuneItem({
    required this.music,
    required this.color,
    required this.text,
  });
  void playMusic() {
    var play = AudioPlayer();
    play.play(AssetSource(music));
  }
}
