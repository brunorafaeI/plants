import 'package:flutter/material.dart';
import 'package:plant/components/header_search.dart';
import 'package:plant/components/recommended_card.dart';
import 'package:plant/components/title_with_btn_more.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          TitleWithButtonMore(title: 'Recommended', press: () {}),
          RecommendedSection(),
        ],
      ),
    );
  }
}
