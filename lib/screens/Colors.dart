// ignore_for_file: file_names

import 'package:Tuku/Classes/itemClass.dart';
import 'package:Tuku/components/items.dart';
import 'package:flutter/material.dart';


class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  
  final List<ItemsClass> colors = const [
    ItemsClass(
        image: "assets/images/colors/color_black.png",
        englishName: "black",
        japaneesName: "Burakku",
        sound: "sounds/colors/black.wav"),
    ItemsClass(
        image: "assets/images/colors/color_brown.png",
        englishName: "Brown",
        japaneesName: "Chairo",
        sound: "sounds/colors/brown.wav"),
    ItemsClass(
        image: "assets/images/colors/color_dusty_yellow.png",
        englishName: "Dusty Yellow",
        japaneesName: "Hokori ppoi kiiro",
        sound: "sounds/colors/dusty yellow.wav"),
    ItemsClass(
        image: "assets/images/colors/color_gray.png",
        englishName: "Gray",
        japaneesName: "Gurē",
        sound: "sounds/colors/gray.wav"),
    ItemsClass(
        image: "assets/images/colors/color_green.png",
        englishName: "Green",
        japaneesName: "Midori",
        sound: "sounds/colors/green.wav"),
    ItemsClass(
        image: "assets/images/colors/color_red.png",
        englishName: "Red",
        japaneesName: "Aka",
        sound: "sounds/colors/red.wav"),
    ItemsClass(
        image: "assets/images/colors/color_white.png",
        englishName: "White",
        japaneesName: "Shiro",
        sound: "sounds/colors/white.wav"),
    ItemsClass(
        image: "assets/images/colors/yellow.png",
        englishName: "Yellow",
        japaneesName: "Kiiro",
        sound: "sounds/colors/yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF36315E),
        title: const Text(
          'Colors',
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
        itemCount: colors.length,
        itemBuilder: (context, index) => Items(item: colors[index]),
      ),
    );
  }
}
