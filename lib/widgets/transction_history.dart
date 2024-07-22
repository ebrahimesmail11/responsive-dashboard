import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transction_history_header.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransctionHistoryHeader(),
       const  SizedBox(height: 20,),
        Text('13 April 2022',style: AppStyles.styleMedium16(context).copyWith(color: const  Color(0xFFAAAAAB)),),
      ],
    );
  }
}

