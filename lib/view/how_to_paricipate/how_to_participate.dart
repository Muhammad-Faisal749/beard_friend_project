import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/circular_indicator/circular_indicator.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../participate/participate.dart';


class ParticipationScreen extends StatelessWidget {
  const ParticipationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: "Participate",
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColor4,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "How to participate in the Contest",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomContainer(
                height: 160.h,
                width: double.infinity.w,
                color: AppColors.btnColor2,
                borderRadius: 10.r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Center(
                        child: CustomText(
                          text: "Contest Ends in",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          textColor: AppColors.textColor5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCircularIndicatorScreen(
                          text: "2d",
                          val: 0.70,
                        ),
                        CustomCircularIndicatorScreen(
                          text: "18h",
                          val: 0.40,
                        ),
                        CustomCircularIndicatorScreen(
                          text: "45m",
                          val: 0.30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "Description",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                text: AppText.participateText1,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "Advantages",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                text: AppText.participateText2,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "How to Join?",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "The Steps are Given Below.",
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 8).r,
                    child: Icon(Icons.circle,size: 12.sp,color: AppColors.textColor2,),
                  ),
                  CustomText(
                    text: AppText.participateSubHeading1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.textColor2,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 8,bottom: 10).r,
                    child: Icon(Icons.circle,size: 12.sp,color: AppColors.textColor2,),
                  ),
                  CustomText(
                    text: AppText.participateSubHeading2,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.textColor2,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 8).r,
                    child: Icon(Icons.circle,size: 12.sp,color: AppColors.textColor2,),
                  ),
                  CustomText(
                    text: AppText.participateSubHeading3,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.textColor2,
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                child: CustomButtons(
                  text: "Continue To Participate",
                  textFontSize: 18.sp,
                  onPress: (){
                    showAlertDialogScreen(context);
                  },

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
