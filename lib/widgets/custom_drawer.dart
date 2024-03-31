import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            title: "Lekan Okeowo",
            images: Assets.imagesAvatar3,
            subTitle: "demo@gmail.com",
          ),
        ],
      ),
    );
  }
}
