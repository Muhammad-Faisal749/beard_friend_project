

import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_sized_box/custom_sized_box.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_constants/app_text.dart';
import '../../widgets/text_form_field/custom_text_form_field.dart';


class ForgotPasswardScreen extends StatelessWidget {
  const ForgotPasswardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSizedBox(height: 150.h,),
              Center(
                child: CustomText(
                  text: "Forgot Password?",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  textColor: AppColors.textColorWhite,
                ),
              ),
              CustomSizedBox(height: 5.h,),
              Center(
                child: CustomText(
                  text: "Please Type in your Email Address",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.textColor2,
                ),
              ),
              CustomSizedBox(
                height: 131.h,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.email,
                hintText: AppText.loginScreenText3,
              ),
              CustomSizedBox(
                height: 131.h,
              ),
              CustomButtons(
                text: "Reset Password",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 63).r,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Remember Password?",
                        style: GoogleFonts.nunito(
                            color: AppColors.textColor2,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "Login",
                        style: GoogleFonts.nunito(
                            color: AppColors.textColor2,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500))
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
