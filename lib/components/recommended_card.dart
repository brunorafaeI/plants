import 'package:flutter/material.dart';
import 'package:plant/components/plant_card.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: RecommendPlantCard(),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final List plantData = [
    {
      'title': 'Samantha',
      'country': 'Russia',
      'price': '440',
      'image': 'assets/images/image_1.png'
    },
    {
      'title': 'Angelica',
      'country': 'Russia',
      'price': '440',
      'image': 'assets/images/image_2.png'
    },
    {
      'title': 'Sophie',
      'country': 'France',
      'price': '440',
      'image': 'assets/images/image_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:
            plantData.map((plant) => PlantCard(plantData: plant)).toList(),
      ),
    );
  }
}
