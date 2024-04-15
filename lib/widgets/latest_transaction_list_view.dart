import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                child: UserInfoListTile(
              userInfoModel: e,
            )))
            .toList(),
      ),
    );
    // return  SizedBox(
    //   height: 90,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(top: 20.0),
    //         child: IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index],)),
    //       );
    //     },
    //   ),
    // );
  }
  
}
