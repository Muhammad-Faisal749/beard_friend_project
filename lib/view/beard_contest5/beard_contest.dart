
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_images/png_images/all_png_images.dart';

class BeardContest5 extends StatelessWidget {
  const BeardContest5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body:   Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bgcontest.png"),
            )
        ),
        child: CustomContainer(
          height: 60.h,
          width: 377.w,
          borderRadius: 15.r,
          color: AppColors.btnColor2,
        ),
      )
    );
  }
}
