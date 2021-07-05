import 'package:flutter/material.dart';
import 'package:plant_app/components/featured_plants.dart';
import 'package:plant_app/components/header_with_search_box.dart';
import 'package:plant_app/components/recommandads.dart';
import 'package:plant_app/components/recommanded_card.dart';
import 'package:plant_app/components/underlined_title_with_more_button.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          UnderLinedTitleWithButtonCon(
            title: 'Recommanded',
            moreOnPress: () {
              print('hwllo');
            },
          ),
          Recommandads(),
          UnderLinedTitleWithButtonCon(
            title: 'Featured Plants',
            moreOnPress: () {
              print('hwllo');
            },
          ),
          FeaturedPlants()
        ],
      ),
    );
  }
}
