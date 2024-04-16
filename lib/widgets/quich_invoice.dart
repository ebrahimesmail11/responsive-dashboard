import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quich_invoice_header.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48,),
          TitleTextField(title: "Customer name",hint: "Type customer name",),
        ],
      ),
    );
  }
}

