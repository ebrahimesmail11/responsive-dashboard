import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageColor, this.imageBackGround});
  final String image;
  final Color? imageColor,imageBackGround;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints( maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape:const  OvalBorder(),
                  color:imageBackGround?? const Color(0xFFF1F1F1),
                ),
                child: Center(child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(imageColor??const Color(0xff4EB7F2), BlendMode.srcIn),),),
              ),
            ),
          ),
        ),
        const Spacer(),
         Transform.rotate(angle:-1.57079633*2 ,child: Icon(Icons.arrow_back_ios_new_outlined,color:imageColor==null? const Color(0xff064061):Colors.white),),
      ],
    );
  }
}
