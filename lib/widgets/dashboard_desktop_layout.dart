import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dash_board/widgets/all_expensess_and_quich_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

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
          flex: 2,
          child: AllExpensessAndQuichInvoiceSection(),
        ),
        SizedBox(width: 24,),
        Expanded(child: MyCard(),),
      ],
    );
  }
}


