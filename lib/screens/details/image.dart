import 'package:flutter/material.dart';

import 'package:plant/consts.dart';

class ImageDetail extends StatelessWidget {
  const ImageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.782,
      width: size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48),
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.3),
            spreadRadius: 6,
            blurRadius: 20,
            offset: Offset(0, 12),
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/img.png'),
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
