// ignore_for_file: file_names

import 'package:Tuku/Classes/itemClass.dart';
import 'package:Tuku/components/itemInfo.dart';
import 'package:flutter/material.dart';


class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item});
  final ItemsClass item;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: const Color(0xFFEDEADE),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenWidth * 0.02,
              horizontal: screenWidth * 0.05,
            ),
            child: ItemInfo(item: item),
          ),
          const Divider(
            color: Color(0XFF36315E),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
