import 'package:beard_friends_project/utils/app_images/all_images.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:beard_friends_project/widgets/custom_sized_box/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_colors/apps_colors.dart';
import '../../utils/app_constants/app_text.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../../widgets/text_form_field/custom_text_form_field.dart';
import '../login/login_screen.dart';
import '../privacy_policy/privacy_policy.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(
                height: 91.h,
              ),
              Center(
                  child: CustomPngImage(
                imagePath: AppPngImages.splash1,
                width: 86.w,
                height: 75.h,
              )),
              CustomSizedBox(
                height: 25.h,
              ),
              Center(
                child: CustomText(
                  text: AppText.signUpScreenText1,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  textColor: AppColors.textColorWhite,
                ),
              ),
              CustomSizedBox(
                height: 5.h,
              ),
              Center(
                child: CustomText(
                  text: AppText.signUpScreenText2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.textColor2,
                ),
              ),
              CustomSizedBox(
                height: 90.h,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.person_outline_outlined,
                hintText: AppText.signUpScreenText,
              ),
              CustomSizedBox(
                height: 25.h,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.email,
                hintText: AppText.loginScreenText3,
              ),
              CustomSizedBox(
                height: 25.h,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: AppText.loginScreenText4,
                suffixIcon: Icons.visibility_off,
              ),
              CustomSizedBox(
                height: 25.h,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: AppText.signUpScreenText4,
                suffixIcon: Icons.visibility_off,
              ),
              SizedBox(
                height: 75.h,
              ),
              CustomButtons(
                onPress: () {
                  showAlertDialogScreen(context); // Call the function here
                },
                text: "Create Account",
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomSizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an Account?",
                          style: GoogleFonts.nunito(
                              color: AppColors.textColor2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: " Login",
                          style: GoogleFonts.nunito(
                              color: AppColors.textColor2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500))
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
