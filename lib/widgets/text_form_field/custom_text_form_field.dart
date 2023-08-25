import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const CustomTextFormField(
      {super.key,
      this.controller,
      this.labelText,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: TextFormField(
        cursorColor: AppColors.primaryColor,
        cursorWidth: 2,
        controller: controller,
        decoration: InputDecoration(
          fillColor: AppColors.textFormBgColor,
          filled: true,
          contentPadding: const EdgeInsets.only(top: 20, bottom: 20).r,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          suffixIcon: Icon(
            suffixIcon,
            color: AppColors.textColor2,
            size: 20,
          ),
          labelText: labelText,
          hintText: hintText,
          hintStyle:
              GoogleFonts.nunito(fontSize: 16.sp, fontWeight: FontWeight.w400,color: AppColors.textColor2),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.textColor2,
            size: 25,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
