import 'package:flutter/material.dart';

import 'package:plant/consts.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FeaturedPlantCard(),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final List plantData = [
    {'image': 'assets/images/bottom_img_1.png'},
    {'image': 'assets/images/bottom_img_2.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:
            plantData.map((plant) => FeaturedCard(plantData: plant)).toList(),
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({Key? key, required this.plantData}) : super(key: key);

  final Map plantData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        print("I'm tapped!");
      },
      child: Container(
        margin: EdgeInsets.all(kDefaultPadding / 2),
        height: 185,
        width: size.width * 0.706,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(plantData['image']),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
