import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_widget.dart';



class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModels, required this.isActive});
  final DrawerItemModels drawerItemModels;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?  ActiveDrawerItem(drawerItemModels: drawerItemModels,):InActiveDrawerItem(drawerItemModels: drawerItemModels);
  }
}
