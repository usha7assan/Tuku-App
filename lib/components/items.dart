import 'package:Tuku/Classes/itemClass.dart';
import 'package:Tuku/components/itemInfo.dart';
import 'package:flutter/material.dart';


class Items extends StatelessWidget {
  final ItemsClass item;

  const Items({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth * 0.3,
      width: double.infinity,
      color: const Color(0xFFEDEADE),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: screenWidth * 0.3,
                width: screenWidth * 0.3,
                color: const Color(0XFF36315E),
                child: Image(
                  image: AssetImage(item.image!),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: ItemInfo(item: item),
              ),
            ],
          ),
          const Expanded(
            child: Divider(
              color: Color(0XFF36315E),
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
