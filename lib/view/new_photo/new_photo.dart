import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../delete/delete.dart';

void showAlertDialogScreen1(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20).r,
        child: AlertDialog(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            text: "Add New Photo",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            textColor: AppColors.textColor4,
          ),
          content: const AddPhotoScreen(),
        ),
      );
    },
  );
}

class AddPhotoScreen extends StatefulWidget {
  const AddPhotoScreen({super.key});

  @override
  State<AddPhotoScreen> createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends State<AddPhotoScreen> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: "Important Note:",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.textColor5),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: "You can not Change your Current Photo.",
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
                text: AppText.addNewPhotoText1,
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
                text: AppText.addNewPhotoText2,
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
                text: AppText.addNewPhotoText3,
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
                  showAlertDialogScreen2(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
