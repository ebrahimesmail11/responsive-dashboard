import 'package:responsive_dash_board/utils/app_images.dart';

class DrawerItemModels{
  final String image;
  final String title;

  const  DrawerItemModels({required this.image, required this.title});

   static const List<DrawerItemModels> items =[
     DrawerItemModels(image: Assets.imagesDashboard, title: "Dashboard"),  
     DrawerItemModels(image: Assets.imagesMyTransctions, title: "My Transaction"),  
     DrawerItemModels(image: Assets.imagesStatistics, title: "Statistics"),
     DrawerItemModels(image: Assets.imagesWalletAccount, title: "Wallet Account"),
     DrawerItemModels(image: Assets.imagesMyInvestments, title: "My Investments"),

   ];
}
