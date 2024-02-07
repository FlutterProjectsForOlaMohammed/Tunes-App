import 'package:flutter/material.dart';
import 'package:tuneapp/Model/Tune_Item.dart';

class TuneContainer extends StatelessWidget {
  const TuneContainer({super.key, required this.tune});
  final TuneItem tune;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playMusic();
      },
      child: Container(
        height: 111,
        width: MediaQuery.of(context).size.width,
        color: tune.color,
        child: Center(
            child: Text(
          tune.text,
          style: const TextStyle(fontFamily: 'Pacifico', fontSize: 18),
        )),
      ),
    );
  }
}
