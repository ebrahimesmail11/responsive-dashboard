import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
static const items=[
      AllExpensesItemModel(
                  image: Assets.imagesBalance,
                  title: "Balance",
                  data: "April 2022",
                  price: "\$20,129"),
                    
               AllExpensesItemModel(
                  image: Assets.imagesIncome,
                  title: "Income",
                  data: "April 2022",
                  price: "\$20,129"),
                  
               AllExpensesItemModel(
                  image: Assets.imagesExpenses,
                  title: "Expensesss",
                  data: "April 2022",
                  price: "\$20,129"),
];
  @override
  Widget build(BuildContext context) {
    return Row(
    //  children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e.itemModel,))).toList(),
    children: items.asMap().entries.map((e) {
      int index=e.key;
      var item=e.value;
      if(index==1){
        return Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: AllExpensesItem(itemModel: item, isSelected: false,),
        ));
      }else{
        return Expanded(child: AllExpensesItem(itemModel: item, isSelected: false,));
      }
    }).toList(),
    );
    
  }
}
