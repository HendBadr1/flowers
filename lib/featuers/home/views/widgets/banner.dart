import 'package:flowers/core/utils/fonts.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/images.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.bnner,),
        Positioned(
         top: 15,
            child:Text("Choose What Suits \n Your Test",style: TextStyle(fontFamily: AppFonts.pangolin),))
      ],
    );
  }
}
