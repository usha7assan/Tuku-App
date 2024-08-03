// ignore_for_file: file_names

import 'package:Tuku/Classes/itemClass.dart';
import 'package:Tuku/components/phasesItem.dart';
import 'package:flutter/material.dart';


class Phases extends StatelessWidget {
  const Phases({super.key});

  final List<ItemsClass> phrases = const [
    ItemsClass(
        englishName: "Don't forget to subscribe!",
        japaneesName: "kōdoku suru koto o wasurenaide kudasai!",
        sound: "sounds/phases/dont_forget_to_subscribe.wav"),
    ItemsClass(
        englishName: "I love programming.",
        japaneesName: "Watashi wa puroguramingu ga daisukidesu.",
        sound: "sounds/phases/i_love_programming.wav"),
    ItemsClass(
        englishName: "Programming is easy.",
        japaneesName: "Puroguramingu wa kantandesu.",
        sound: "sounds/phases/programming_is_easy.wav"),
    ItemsClass(
        englishName: "Where are you going?",
        japaneesName: "Doko ni iku no?",
        sound: "sounds/phases/where_are_you_going.wav"),
    ItemsClass(
        englishName: "What is your name?",
        japaneesName: "Namae wa nandesuka?",
        sound: "sounds/phases/what_is_your_name.wav"),
    ItemsClass(
        englishName: "I love anime.",
        japaneesName: "Watashi wa anime ga daisukidesu.",
        sound: "sounds/phases/i_love_anime.wav"),
    ItemsClass(
        englishName: "How are you feeling?",
        japaneesName: "Watashi wa anime ga daisukidesu?",
        sound: "sounds/phases/how_are_you_feeling.wav"),
    ItemsClass(
        englishName: "Are you coming?",
        japaneesName: "Kimasu ka?",
        sound: "sounds/phases/are_you_coming.wav"),
    ItemsClass(
        englishName: "Yes, I'm coming.",
        japaneesName: "Hai, watashi wa kite imasu.",
        sound: "sounds/phases/yes_im_coming.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEADE),
      appBar: AppBar(
        backgroundColor: const Color(0XFF36315E),
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Color(0xFFEDEADE),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFFEDEADE),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: const Color(0xFFEDEADE),
            height: 1.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => PhrasesItem(item: phrases[index]),
      ),
    );
  }
}
