import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Container(
    width: 12,
    height: 12,
    decoration:   ShapeDecoration(
        color: itemDetailsModel.color,
        shape:const  OvalBorder(),
    ),
),
      title:  FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
            itemDetailsModel.title,
            style:AppStyles.styleRegular16(context),
        ),
      ),
trailing:  FittedBox(
  fit:  BoxFit.scaleDown,
  child: Text(
      itemDetailsModel.value,
      style: AppStyles.styleSemiBold16(context),
  ),
),
    );
  }
}