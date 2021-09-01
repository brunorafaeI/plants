import 'package:flutter/material.dart';
import 'package:plant/screens/details/detail.dart';
import 'package:plant/consts.dart';

class PlantData {
  const PlantData({
    required this.title,
    required this.country,
    required this.price,
    this.image = '',
  });

  final String title, country, image;
  final int price;
}

class PlantCard extends StatelessWidget {
  const PlantCard({Key? key, required this.plantData}) : super(key: key);

  final Map<String, dynamic> plantData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding / 2),
      height: 240,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.23),
            spreadRadius: 8,
            blurRadius: 20,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Image.asset(plantData['image']),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plantData['title'],
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      plantData['country'],
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Text(
                    "\$" + plantData['price'],
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
