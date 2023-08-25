import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../beard _contest2/beard_contest.dart';
import '../beard_contest/beard_contest.dart';

void showAlertDialogScreen2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20).r,
        child: AlertDialog(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            text: "Delete Photo?",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            textColor: AppColors.textColor4,
          ),
          content: const DeletePhotoScreen(),
        ),
      );
    },
  );
}

class DeletePhotoScreen extends StatefulWidget {
  const DeletePhotoScreen({super.key});

  @override
  State<DeletePhotoScreen> createState() => _DeletePhotoScreenState();
}

class _DeletePhotoScreenState extends State<DeletePhotoScreen> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: AppText.deletePhotoText1,
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.textColor5),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: "After Deleting:",
              fontSize: 8.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.textColor5),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8).r,
                child: Icon(
                  Icons.circle,
                  size: 8.sp,
                  color: AppColors.textColor2,
                ),
              ),
              CustomText(
                text: AppText.deletePhotoText2,
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 10, right: 8, bottom: 10).r,
                child: Icon(
                  Icons.circle,
                  size: 8.sp,
                  color: AppColors.textColor2,
                ),
              ),
              CustomText(
                text: AppText.deletePhotoText3,
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8).r,
                child: Icon(
                  Icons.circle,
                  size: 8.sp,
                  color: AppColors.textColor2,
                ),
              ),
              CustomText(
                text: AppText.deletePhotoText4,
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtons(
                text: "Cancel",
                btnColor: AppColors.btnColor2,
                textColor: AppColors.textColor5,
                textFontSize: 14.sp,
                onPress: () {
                  Navigator.pop(context);
                },
              ),
              CustomButtons(
                text: "Delete",
                btnColor: AppColors.redButton,
                textFontSize: 14.sp,
                onPress: () {
                  Get.to(()=>const BeardContestScreen());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
