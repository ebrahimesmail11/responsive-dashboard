

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item_header.dart';


import '../utils/app_images.dart';


class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: const BorderSide(width: 1, color: Color(0xFFF1F1F1),),),

      ),
      child:  const Column(
        children: [
          AllExpensesItemHeader(image: Assets.imagesWalletAccount,),
        ],
      ),
    );
  }
}
