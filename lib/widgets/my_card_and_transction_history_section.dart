import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transction_history.dart';

class MyCardAndTransctionHistorySection extends StatelessWidget {
  const MyCardAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomBackGroundContainer(
      child:    Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransctionHistory(),
        ],
      ),
    );
  }
}