import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/view/beard_coins/beard_coins.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_colors/apps_colors.dart';
import '../../utils/app_constants/app_text.dart';
import '../../widgets/custom_text/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90.h,
            ),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  AppPngImages.homeImg1,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: CustomText(
                text: "Welcome Nouman,",
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColor4,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: CustomText(
                text: "Let’s Scan your QR Code to get a Beard Coin",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Center(
              child: Container(
                  height: 200.h,
                  width: 218.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15).r,
                    color: AppColors.textColorWhite,
                  ),
                  child: const Center(
                      child: CustomPngImage(imagePath: AppPngImages.homeImg2))),
            ),
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomText(
                text: AppText.homeScreenText1,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: AppText.homeScreenText2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.textColor2,
                  ),
                  CustomButtons(
                    text: "Beard Coins",
                    fontWeight: FontWeight.w600,
                    textFontSize: 14.sp,
                    onPress: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: AppColors.primaryColor,
                            actions: [
                              SizedBox(
                                height: 50.h,
                              ),
                              Center(
                                child: CustomPngImage(
                                  imagePath: AppPngImages.splash1,
                                  width: 88.w,
                                  height: 75.h,
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Center(
                                child: CustomText(
                                  text: "Congratulation!!!",
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppColors.textColor4,
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Center(
                                child: CustomText(
                                  textAlign: TextAlign.center,
                                  text: AppText.alertHomeScreenText2,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppColors.textColor2,
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomButtons(
                                    text: "Skip",
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.textColor5,
                                    textFontSize: 14.sp,
                                    btnColor: AppColors.primaryColor,
                                    onPress: () {},
                                  ),
                                  CustomButtons(
                                    text: "Assign",
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.textColor4,
                                    textFontSize: 14.sp,
                                    onPress: () {
                                      Get.to(const BeardCoinsScreen());
                                    },
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
