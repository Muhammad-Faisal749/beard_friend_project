

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors/apps_colors.dart';
import '../custom_text/custom_text.dart';

class CustomCircularIndicatorScreen extends StatelessWidget {
  String ?text;
  double ?val;
 CustomCircularIndicatorScreen({this.text,this.val,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Stack(
        children: [
          SizedBox(
            height: 60.h,
            width: 68.w,
            child: CircularProgressIndicator(
              strokeWidth: 4.w,
              value: val,
              backgroundColor: AppColors.textColor2,
              valueColor:
              const AlwaysStoppedAnimation(AppColors.btnColor),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: CustomText(
                text: text,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColor4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
