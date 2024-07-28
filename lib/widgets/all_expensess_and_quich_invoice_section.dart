import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/quich_invoice.dart';

class AllExpensessAndQuichInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuichInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}