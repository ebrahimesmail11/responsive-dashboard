import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

import '../utils/app_styles.dart';

class AllExpensesHeaders extends StatelessWidget {
  const AllExpensesHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox(),),
        const RangeOptions(),
      ],
    );
  }
}
