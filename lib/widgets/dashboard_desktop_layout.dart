import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dash_board/widgets/all_expensess_and_quich_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transction_history_section.dart';


class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
   Expanded(
    flex: 3,
     child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                 hasScrollBody: false,
                child:   Row(
                 children: [
                      Expanded(
                     flex: 2,
                     child: Padding(
                       padding: EdgeInsets.only(top: 40),
                       child: AllExpensessAndQuichInvoiceSection(),
                     ),
                   ),
                   SizedBox(width: 24,),
                   
                   Expanded(
                    child: Column(
                     children: [
                       SizedBox(height: 40,),
                       MyCardAndTransctionHistorySection(),
                       SizedBox(height: 24,),
                       IncomeSection(),
                     ],
                   ),),
                 ],
                ),
              ),
            ],
            ),
   ),
      ],
    );
  }
}


