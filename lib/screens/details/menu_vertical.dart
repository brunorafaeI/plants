import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant/components/icon_button_card.dart';

class IconButtonVertical extends StatelessWidget {
  const IconButtonVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
            ),
          ),
          SizedBox(
            height: size.height * 0.14,
          ),
          IconButtonCard(icon: 'assets/icons/sun.svg'),
          IconButtonCard(icon: 'assets/icons/icon_2.svg'),
          IconButtonCard(icon: 'assets/icons/icon_3.svg'),
          IconButtonCard(icon: 'assets/icons/icon_4.svg'),
        ],
      ),
    );
  }
}
