import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant/consts.dart';

class IconButtonCard extends StatelessWidget {
  const IconButtonCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 48,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.3),
            spreadRadius: 6,
            blurRadius: 20,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(icon),
      ),
    );
  }
}
