import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
static const  itemDetails = [
  ItemDetailsModel(color: Color(0xFF208BC7), title: 'Design service', value: '40%',),
  ItemDetailsModel(color: Color(0xFF4DB7F2),title: 'Design product', value: '25%',),
  ItemDetailsModel(color: Color(0xFF064060), title: 'Product royalti', value: '20%',),
  ItemDetailsModel(color: Color(0xFFE2DECD),title: 'Other', value: '22%',),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemDetails.map((e) => ItemDetails(itemDetailsModel: e,)).toList(),
    );
    // return  ListView.builder(
    //   itemCount: itemDetails.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context,index){
    //     return ItemDetails( itemDetailsModel: itemDetails[index],);
    //   },
    // );
  }
}
