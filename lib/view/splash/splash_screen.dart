import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'dart:async';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/view/selection/selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/custom_png_image/custom_png_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), (() => Get.to(() => SelectionScreen())));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppPngImages.splashBgImg,),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomPngImage(
                imagePath: AppPngImages.splash1,
                width: 184.w,
                height: 159.h,
              ),
            ),
            Center(
              child: CustomPngImage(
                imagePath: AppPngImages.splash2,
                width: 236.w,
                height: 46.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
