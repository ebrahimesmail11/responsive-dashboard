import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

import '../utils/size_config.dart';



class DashBoardViews extends StatefulWidget {
  const DashBoardViews({super.key});

  @override
  State<DashBoardViews> createState() => _DashBoardViewsState();
}

class _DashBoardViewsState extends State<DashBoardViews> {
  final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet ? AppBar(
        backgroundColor:const  Color(0xFFFAFAFA),
        elevation: 0,
        leading:   IconButton(onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        }, icon: const  Icon( Icons.menu),),
      ) : null,
      backgroundColor:const  Color(0xFFF7F9FA),
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet ? const  CustomDrawer():null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
