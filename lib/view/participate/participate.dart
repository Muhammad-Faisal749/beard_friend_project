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

void showAlertDialogScreen(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20).r,
        child: AlertDialog(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            text: "Participate",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            textColor: AppColors.textColor4,
          ),
          content: ParticipateAlertScreen(),
        ),
      );
    },
  );
}

class ParticipateAlertScreen extends StatefulWidget {
  ParticipateAlertScreen({super.key});

  @override
  State<ParticipateAlertScreen> createState() => _ParticipateAlertScreenState();
}

class _ParticipateAlertScreenState extends State<ParticipateAlertScreen> {
  File? _image;

  Future<void> selectimage() async {
    final pickedimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedimage != null) {
      setState(() {
        _image = File(pickedimage.path);
      });
    }
  }

  bool isChecked1 = true;
  bool isChecked2 = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: "Upload Photo",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.textColor5),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DottedBorder(
                  color: AppColors.textColor2,
                  radius: const Radius.circular(5).r,
                  padding: const EdgeInsets.all(20).r,
                  child: GestureDetector(
                    onTap: () {
                      selectimage();
                    },
                    child: Center(
                      child: _image != null
                          ? Image.file(
                              _image!,
                              fit: BoxFit.cover,
                              height: 35.h,
                              width: 35.h,
                            )
                          : Image.asset(
                              "assets/images/upload.png",
                              height: 45.h,
                              width: 45.w,
                            ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                      width: 5.w,
                    ),
                    CustomText(
                        text: "Upload Your Photo Here",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        textColor: AppColors.textColorWhite),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                        text:
                            "You must Upload at least 1 Photo of\ntype .jpg or .png",
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        textColor: AppColors.textColor2),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: "Rules for Participaiton",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.textColor5),
          CustomText(
              text: "You Must follow the rules to participate in the contest.",
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
                text: AppText.participateAlertText1,
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
                text: AppText.participateAlertText2,
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
                text: AppText.participateAlertText3,
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  activeColor: AppColors.btnColor,
                  value: isChecked1,
                  onChanged: (value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  }),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "I Agree & Accept All Rules ",
                    style: GoogleFonts.nunito(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor5)),
              ]))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  activeColor: AppColors.btnColor,
                  value: isChecked2,
                  onChanged: (value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  }),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Agree & Accept ",
                    style: GoogleFonts.nunito(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor5)),
                TextSpan(
                    text: "General Terms &\nConditions ",
                    style: GoogleFonts.nunito(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.btnColor)),
              ]))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtons(
                text: "Discard",
                btnColor: AppColors.btnColor2,
                textColor: AppColors.textColor5,
                textFontSize: 14.sp,
                onPress: () {
                  Navigator.pop(context);
                },
              ),
              CustomButtons(
                text: "Continue",
                textFontSize: 14.sp,
                onPress: () {
                 Get.to(()=>const BeardContestScreen2());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
