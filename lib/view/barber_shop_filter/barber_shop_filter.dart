import 'package:beard_friends_project/view/search_results/search_results.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_colors/apps_colors.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../privacy_policy/privacy_policy.dart';

void showAlertDialog2Screen(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20).r,
        child: AlertDialog(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            text: "Search Filter",
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            textColor: AppColors.textColor4,
          ),
          content: SizedBox(height: 378.w, child: const AlertDialogContent2()),
        ),
      );
    },
  );
}

class AlertDialogContent2 extends StatefulWidget {
  const AlertDialogContent2({super.key});

  @override
  State<AlertDialogContent2> createState() => _AlertDialogContent2State();
}

class _AlertDialogContent2State extends State<AlertDialogContent2> {
  double currentValue = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Sort by",
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
          textColor: AppColors.textColor5,
        ),
        Row(
          children: [
            CustomContainer(
              height: 30.h,
              color: AppColors.btnColor,
              borderRadius: 18.r,
              width: 90.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.check,
                    size: 9.sp,
                    color: AppColors.textColorWhite,
                  ),
                  CustomText(
                    text: " Distance",
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.textColorWhite,
                  ),
                ],
              ),
            ),
            CustomContainer(
              height: 30.h,
              color: AppColors.btnColor2,
              borderRadius: 18.r,
              width: 64.w,
              child: Center(
                child: CustomText(
                  text: "Price",
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.textColorWhite,
                ),
              ),
            ),
            CustomContainer(
              height: 30.h,
              color: AppColors.btnColor2,
              borderRadius: 18.r,
              width: 70.w,
              child: Center(
                child: CustomText(
                  text: "Rating",
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.textColorWhite,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomText(
          text: "Distance in Km",
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
          textColor: AppColors.textColor5,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            CustomText(
                text: "1 Km",
                fontSize: 6.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.textColor2),
            Slider(
                value: currentValue,
                activeColor: AppColors.btnColor,
                inactiveColor: AppColors.textColor2,
                min: 1,
                max: 100,
                label: currentValue.toString(),
                onChanged: (val) {
                  setState(() {
                    currentValue = val;
                  });
                }),
            CustomText(
                text: "100 Km",
                fontSize: 6.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.textColor2),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomText(
          text: "Sits",
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
          textColor: AppColors.textColor5,
        ),
        SizedBox(height: 15.h,),
       Expanded(
         child: ListView.builder(
           itemCount: 2,
           itemExtent: 80,
           scrollDirection: Axis.horizontal,
           physics: const NeverScrollableScrollPhysics(),
           itemBuilder: (context, index) {
           return  Padding(
             padding: EdgeInsets.only(right: 10.w),
             child: Container(
               width: 99.w,
               height: 40,
               decoration: BoxDecoration(
                 color: AppColors.primaryColor,
                 borderRadius: BorderRadius.circular(15).r,
                 border: Border.all(
                   color: AppColors.textColor2,
                 ),
               ),child: Center(
               child: CustomText(
                 text: "1 - 5",
                 fontSize: 14.sp,
                 fontWeight: FontWeight.w500,
                 textColor: AppColors.textColor2,
               ),
             ),
             ),
           );
         },),
       ),

        SizedBox(height: 30.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtons(
              onPress: () {
                Navigator.pop(context);
              },
              text: "Reset",
              btnColor: AppColors.btnColor2,
            ),
            SizedBox(
              width: 25.w,
            ),
            CustomButtons(
              onPress: () {
                Get.to(
                  SearchResultsScreen(),
                );
              },
              text: "Apply",
              btnColor: AppColors.btnColor,
            ),
          ],
        )
      ],
    );
  }
}
