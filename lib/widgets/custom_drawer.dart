import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_widget.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';

import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              title: "Lekan Okeowo",
              images: Assets.imagesAvatar3,
              subTitle: "demo@gmail.com",
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(),),
                InActiveDrawerItem(
                  drawerItemModels: DrawerItemModels(
                      image: Assets.imagesSettings, title: "Setting system"),
                ),
                InActiveDrawerItem(
                  drawerItemModels: DrawerItemModels(
                      image: Assets.imagesLogout, title: "Logout account"),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
