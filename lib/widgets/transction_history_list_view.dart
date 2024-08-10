import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transctionList.map((e) => TransctionItem(transctionModel: e,)).toList(),
    );
    // return  ListView.builder(
    //   itemCount: transctionList.length,
    //   // shrinkWrap: true,
    //   itemBuilder: (context,index){
    //     return TransctionItem( transctionModel: transctionList[index],);
    //   },
    // );
  }
}