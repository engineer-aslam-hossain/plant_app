import 'package:flutter/material.dart';
import 'package:plant_app/components/recommanded_card.dart';

class Recommandads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandedCard(
            title: 'Samantha',
            amount: '440',
            country: 'Russia',
            image: 'assets/images/image_1.png',
            cardOnTap: () {},
          ),
          RecommandedCard(
            title: 'Shahnaz',
            amount: '640',
            country: 'Bangladesh',
            image: 'assets/images/image_2.png',
            cardOnTap: () {},
          ),
          RecommandedCard(
            title: 'Jhon',
            amount: '840',
            country: 'Usa',
            image: 'assets/images/image_3.png',
            cardOnTap: () {},
          ),
        ],
      ),
    );
  }
}
