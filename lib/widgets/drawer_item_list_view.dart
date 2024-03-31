import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

import '../models/drawer_items_models.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:const  NeverScrollableScrollPhysics(),
      itemCount: DrawerItemModels.items.length,
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            if(activeIndex != index){
              setState(() {
                activeIndex=index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(drawerItemModels: DrawerItemModels.items[index], isActive: activeIndex == index,),
          ),
        );
    });
  }
}