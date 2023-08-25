import 'package:beard_friends_project/bottom_navigation/bottom_navigation.dart';
import 'package:beard_friends_project/utils/app_images/all_images.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:beard_friends_project/widgets/custom_sized_box/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_colors/apps_colors.dart';
import '../../utils/app_constants/app_text.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../../widgets/text_form_field/custom_text_form_field.dart';
import '../forgot_passward/forgot_passward.dart';
import '../home/home.dart';
import '../signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
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
                  text: AppText.loginScreenText1,
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
                  text: AppText.loginScreenText2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.textColor2,
                ),
              ),

              CustomSizedBox(
                height: 90.h,
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
              ),
              GestureDetector(
                onTap: (){
                  Get.to(() => const ForgotPasswardScreen());
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: CustomText(

                    text: AppText.loginScreenText5,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.textColor2,
                  ),
                ),
              ),
              SizedBox(
                height: 75.h,
              ),
              CustomButtons(
                onPress: () {
                  Get.to(() => const BottomNavigationBarScreen());
                },
                text: "Login",
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomText(
                text: AppText.loginScreenText6,
                textColor: AppColors.textColor2,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              CustomSizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPngImage(
                    imagePath: CustomPng.loginImg1,
                    width: 40.w,
                    height: 40.h,
                  ),
                  CustomSizedBox(
                    width: 30.h,
                  ),
                  CustomPngImage(
                    imagePath: CustomPng.loginImg2,
                    width: 40.w,
                    height: 40.h,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 63),
                child: GestureDetector(
                  onTap: (){
                    Get.to(() => const SignUpScreen());
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Not have an Account?",
                          style: GoogleFonts.nunito(
                              color: AppColors.textColor2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: " Create One",
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
