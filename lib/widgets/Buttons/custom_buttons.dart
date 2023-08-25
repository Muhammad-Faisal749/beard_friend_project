import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtons extends StatelessWidget {
  bool isIcon;
  String? text;
  // IconData? icon;
  Function()? onPress;
  Color btnColor;
  Color textColor;
  double textFontSize;
  FontWeight fontWeight;


  CustomButtons(
      {super.key, this.text,
      // this.icon,
      this.onPress,
      this.btnColor = AppColors.btnColor,
        this.textColor = AppColors.textColorWhite,
      this.textFontSize = 16,
      this.fontWeight = FontWeight.w600,
        this.isIcon = false

      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child:isIcon == false ?CustomContainer(
        height: 50.h,
        borderRadius: 20,
        color: btnColor,
        child: Center(
          child: CustomText(
            text: text,
            fontSize: textFontSize,
            fontWeight: fontWeight,
            textColor: textColor,
          ),
        ),
      ) : CustomContainer(
        height: 50.h,
        borderRadius: 20.r,
        color: btnColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: text,
              fontSize: textFontSize,
              fontWeight: fontWeight,
              textColor: AppColors.textColorWhite,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,).r,
              child: const Icon(
                Icons.arrow_forward_ios_sharp,size: 14,color: AppColors.iconColorWhite,
              ),
            ),
          ],
        ),
      )
    );
  }
}
