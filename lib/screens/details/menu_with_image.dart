import 'package:flutter/material.dart';

import 'package:plant/consts.dart';
import 'package:plant/screens/details/image.dart';
import 'package:plant/screens/details/menu_vertical.dart';

class MenuWithImage extends StatelessWidget {
  const MenuWithImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        children: [
          IconButtonVertical(),
          ImageDetail(),
        ],
      ),
    );
  }
}
