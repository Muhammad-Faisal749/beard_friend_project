import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void showAlertDialogScreen(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20).r,
        child: AlertDialog(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            text: "GDPR and General Terms & Conditions",
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            textColor: AppColors.textColor4,
          ),
          content: const AlertDialogContent(),
        ),
      );
    },
  );
}

class AlertDialogContent extends StatefulWidget {
  const AlertDialogContent({super.key});

  @override
  State<AlertDialogContent> createState() => _AlertDialogContentState();
}

class _AlertDialogContentState extends State<AlertDialogContent> {
  bool isChecked1 = true;
  bool isChecked2 = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    text: "I Agree & Accept ",
                    style: GoogleFonts.nunito(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor5)),
                TextSpan(
                    text: "Privacy Policy",
                    style: GoogleFonts.nunito(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.btnColor)),
              ]))
            ],
          ),
          SizedBox(
            height: 20.h,
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
                    text: "I Agree & Accept ",
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
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            text: AppText.alertDialogText,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            textColor: AppColors.textColor2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.w, top: 40.h),
            child: CustomButtons(
              text: "Continue",
              textFontSize: 14.sp,
              onPress: (){
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
