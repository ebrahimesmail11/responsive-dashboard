
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_items_models.dart';
import '../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModels,
  });

  final DrawerItemModels drawerItemModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModels.image),
      title: FittedBox(fit: BoxFit.scaleDown,alignment: Alignment.centerLeft, child: Text(drawerItemModels.title,style: AppStyles.styleRegular16(context),)),
    );
  }
}
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModels,
  });

  final DrawerItemModels drawerItemModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModels.image),
      title: FittedBox(fit: BoxFit.scaleDown,alignment: Alignment.centerLeft, child: Text(drawerItemModels.title,style: AppStyles.styleBold16(context),)),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2),),
      ),
    );
  }
}