import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors/apps_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  double? width;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  CustomSearchBar(
      {super.key,
      this.controller,
      this.labelText,
      this.width,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 60.h,
      child: TextFormField(
        cursorColor: AppColors.primaryColor,
        cursorWidth: 2,
        decoration: InputDecoration(
          fillColor: AppColors.textFormBgColor,
          filled: true,
          contentPadding: const EdgeInsets.only(top: 20, bottom: 20).r,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          suffixIcon: Padding(
            padding:  EdgeInsets.only(right: 13.w),
            child: Image.asset(
              AppPngImages.suffixIconSearch,
              width: 15.w,
              height: 15.w,
              color: AppColors.textColor2,
            ),
          ),
          labelText: labelText,
          hintText: hintText,
          hintStyle: GoogleFonts.nunito(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor2),
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
