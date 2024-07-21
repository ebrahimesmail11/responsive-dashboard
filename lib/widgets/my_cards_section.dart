import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';

import 'my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My Card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const  SizedBox(height: 20,),
        const  MyCardsPageView(),
        const  SizedBox(height: 20,),
        const  DotsIndicator(),
      ],
    );
  }
}