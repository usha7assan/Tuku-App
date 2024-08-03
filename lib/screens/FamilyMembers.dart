// ignore_for_file: file_names

import 'package:Tuku/Classes/itemClass.dart';
import 'package:Tuku/components/items.dart';
import 'package:flutter/material.dart';


class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  
  final List<ItemsClass> familyMembers = const [
   ItemsClass(
        image: "assets/images/family_members/family_father.png",
        englishName: "Father",
        japaneesName: "Chichioya",
        sound: "sounds/family_members/father.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_daughter.png",
        englishName: "Daughter",
        japaneesName: "Musume",
        sound: "sounds/family_members/daughter.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_grandfather.png",
        englishName: "Grand Father",
        japaneesName: "Ojīsan",
        sound: "sounds/family_members/grandfather.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_mother.png",
        englishName: "Mother",
        japaneesName: "Hahaoya",
        sound: "sounds/family_members/mother.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_grandmother.png",
        englishName: "Grand Mother",
        japaneesName: "Sobo",
        sound: "sounds/family_members/grandmother.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_older_brother.png",
        englishName: "Older Brother",
        japaneesName: "Nīsan",
        sound: "sounds/family_members/olderbother.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_older_sister.png",
        englishName: "Older Sister",
        japaneesName: "Ane",
        sound: "sounds/family_members/oldersister.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_son.png",
        englishName: "Son",
        japaneesName: "Musuko",
        sound: "sounds/family_members/son.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_younger_brother.png",
        englishName: "Younger Brohter",
        japaneesName: "Otōto",
        sound: "sounds/family_members/youngerbrohter.wav"),
    ItemsClass(
        image: "assets/images/family_members/family_younger_sister.png",
        englishName: "Younger Sister",
        japaneesName: "Imōto",
        sound: "sounds/family_members/youngersister.wav"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF36315E),
        title: const Text(
          'Family Members',
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
        itemCount: familyMembers.length,
        itemBuilder: (context, index) => Items(item: familyMembers[index]),
      ),
    );
  }
}
