import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/widgets/inactive_and_active_selected_all_expensses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return isSelected  ? ActiveSelectedAllExpenssesItem(itemModel: itemModel) : InActiveSelectedAllExpenssesItem(itemModel: itemModel);
  }
}


