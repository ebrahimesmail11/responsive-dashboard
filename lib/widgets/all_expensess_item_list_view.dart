import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});


  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}
class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final  items= [
      const AllExpensesItemModel(
                  image: Assets.imagesBalance,
                  title: "Balance",
                  data: "April 2022",
                  price: "\$20,129"),
                    
              const  AllExpensesItemModel(
                  image: Assets.imagesIncome,
                  title: "Income",
                  data: "April 2022",
                  price: "\$20,129"),
                  
               const AllExpensesItemModel(
                  image: Assets.imagesExpenses,
                  title: "Expensesss",
                  data: "April 2022",
                  price: "\$20,129"),
];
int isSelected=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(0);
            },
            child: AllExpensesItem(itemModel: items[0], isSelected: isSelected==0,),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(1);
            },
            child: AllExpensesItem(itemModel: items[1], isSelected: isSelected==1,),
          ),
        ),
          const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(2);
            },
            child: AllExpensesItem(itemModel: items[2], isSelected: isSelected==2,),
          ),
        ),
      ],
    );
    return Row(
    //  children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e.itemModel,))).toList(),
    children: items.asMap().entries.map((e) {
      int index=e.key;
      var item=e.value;
      return Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(index);
            },
            child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:index== 1? 12.0:0),
            child: AllExpensesItem(itemModel: item, isSelected: isSelected==index,),
          ),
          ),
        );
    }).toList(),
    );
    
  }
  
  void updateIndex(int  index) {
    setState(() {
      isSelected=index;
    });
  }
}
