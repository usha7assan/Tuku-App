// ignore_for_file: file_names

import 'package:Tuku/components/category.dart';
import 'package:Tuku/screens/Colors.dart';
import 'package:Tuku/screens/FamilyMembers.dart';
import 'package:Tuku/screens/Numbers.dart';
import 'package:Tuku/screens/Phases.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFEDEADE),
      appBar: AppBar(
        backgroundColor: const Color(0XFF36315E),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Color(0xFFEDEADE),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.0001,vertical:screenWidth * 0.05 ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                text: 'Numbers',
                color: const Color(0XFF36315E),
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Numbers()),
                  );
                },
              ),
              SizedBox(height: screenWidth * 0.05),
              Category(
                text: 'Family Members',
                color: const Color(0XFF36315E),
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FamilyMembers()),
                  );
                },
              ),
              SizedBox(height: screenWidth * 0.05),
              Category(
                text: 'Colors',
                color: const Color(0XFF36315E),
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ColorsPage()),
                  );
                },
              ),
              SizedBox(height: screenWidth * 0.05),
              Category(
                text: 'Phrases',
                color: const Color(0XFF36315E),
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Phases()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
