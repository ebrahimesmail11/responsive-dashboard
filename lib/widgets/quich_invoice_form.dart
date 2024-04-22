import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuichInvoiceForm extends StatelessWidget {
  const QuichInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: "Customer name", hint: "Type customer name",),),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: "Customer Email", hint: "Type customer name",),),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(title: "Item name", hint: "Type customer name",),),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: "Item mount", hint: "USD",),),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomButton(backgroundColor: Colors.transparent,textColor: Color(0xFF4EB7F2),text: 'Add more details',),),
            SizedBox(width: 24,),
            Expanded(child: CustomButton(),),
          ],
        ),
      ],
    );
  }
}