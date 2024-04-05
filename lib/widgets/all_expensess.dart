import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

import 'package:responsive_dash_board/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';


import '../utils/app_images.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
      ),
      child:const   Column(
        children: [
          AllExpensesHeaders(),
          SizedBox(height: 16,),
          AllExpensesItem(itemModel: AllExpensesItemModel(image: Assets.imagesIncome, title: "Income", data: "April 202", price: "\$20,129")),
        ],
        ),
    );
  }
}
