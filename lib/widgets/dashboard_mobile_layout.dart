import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quich_invoice_section.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuichInvoiceSection(),
          SizedBox(height: 24,),
          MyCardAndTransctionHistorySection(),
          SizedBox(height: 24,),
          IncomeSection(),
        ],
      ),
    );
  }
}