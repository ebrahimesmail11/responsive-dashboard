import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item_header.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_styles.dart';

class InActiveSelectedAllExpenssesItem extends StatelessWidget {
  const InActiveSelectedAllExpenssesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.data,
            style: AppStyles.styleRegular14(
              context,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveSelectedAllExpenssesItem extends StatelessWidget {
  const ActiveSelectedAllExpenssesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imageBackGround:  Colors.white.withOpacity(0.10000000149011612),
            imageColor:const  Color(0xffFFFFFF),
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.data,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: Color(0xFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
