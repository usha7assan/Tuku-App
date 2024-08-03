// ignore_for_file: file_names

import 'package:Tuku/Classes/itemClass.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


// A global instance of AudioPlayer
final AudioPlayer globalAudioPlayer = AudioPlayer();

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemsClass item;

  void _playSound() async {
    await globalAudioPlayer.stop(); 
    await globalAudioPlayer.play(AssetSource(item.sound));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.japaneesName,
                style: TextStyle(
                  color: const Color(0XFF36315E),
                  fontSize: screenWidth * 0.04,
                  fontWeight:FontWeight.bold,
                ),
              ),
              Text(
                item.englishName,
                style: TextStyle(
                  color: const Color(0XFF36315E),
                  fontSize: screenWidth * 0.04,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: _playSound,
            icon: Icon(
              Icons.play_arrow,
              color: const Color(0XFF36315E),
              size: screenWidth * 0.09,
            ),
          ),
        ],
      ),
    );
  }
}
