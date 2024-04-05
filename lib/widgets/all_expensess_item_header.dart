import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration:const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFF1F1F1),
          ),
          child: SvgPicture.asset(image),
        ),
      ],
    );
  }
}
