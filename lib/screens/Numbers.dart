// ignore_for_file: file_names

import 'package:Tuku/Classes/itemClass.dart';
import 'package:Tuku/components/items.dart';
import 'package:flutter/material.dart';


class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final List<ItemsClass> numbers = const [
    ItemsClass(
        image: "assets/images/numbers/number_one.png",
        englishName: "One",
        japaneesName: "ichi",
        sound: "sounds/numbers/number_one_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_two.png",
        englishName: "Two",
        japaneesName: "Ni",
        sound: "sounds/numbers/number_two_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_three.png",
        englishName: "Three",
        japaneesName: "San",
        sound: "sounds/numbers/number_three_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_four.png",
        englishName: "Four",
        japaneesName: "Shi",
        sound: "sounds/numbers/number_four_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_five.png",
        englishName: "Five",
        japaneesName: "Ato",
        sound: "sounds/numbers/number_five_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_six.png",
        englishName: "Six",
        japaneesName: "Roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_seven.png",
        englishName: "Seven",
        japaneesName: "Sebun",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_eight.png",
        englishName: "Eight",
        japaneesName: "hachi",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_nine.png",
        englishName: "Nine",
        japaneesName: "Kyǔ",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    ItemsClass(
        image: "assets/images/numbers/number_ten.png",
        englishName: "Ten",
        japaneesName: "Jǔ",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF36315E),
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Color(0xFFEDEADE),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFFEDEADE), // Set the back arrow color here
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0), // Height of the bottom border
          child: Container(
            color: const Color(0xFFEDEADE), // Color of the bottom border
            height: 1.0, // Thickness of the bottom border
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => Items(item: numbers[index]),
      ),
    );
  }
}
