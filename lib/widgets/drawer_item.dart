import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModels, required this.isActive});
  final DrawerItemModels drawerItemModels;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: SvgPicture.asset(drawerItemModels.image),
      title: Text(drawerItemModels.title,style: AppStyles.styleRegular16(context),),
    );
  }
}