import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/quich_invoice.dart';

import '../utils/size_config.dart';

class AllExpensessAndQuichInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuichInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const AllExpenses(),
       const SizedBox(
          height: 24,
        ),
       const QuickInvoice(),
       SizedBox(height: MediaQuery.sizeOf(context).width * .12,),
      ],
    );
  }
}