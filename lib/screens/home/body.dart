import 'package:flutter/material.dart';

import 'package:plant/components/featured_card.dart';
import 'package:plant/components/header_search.dart';
import 'package:plant/components/recommended_card.dart';
import 'package:plant/components/title_with_btn_more.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(),
          TitleWithButtonMore(title: 'Recommended', press: () {}),
          RecommendedSection(),
          TitleWithButtonMore(title: "Featured plants", press: () {}),
          FeaturedSection()
        ],
      ),
    );
  }
}
