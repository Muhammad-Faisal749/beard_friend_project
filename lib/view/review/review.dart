import 'package:beard_friends_project/Lists/review/review_list.dart';
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back_ios_outlined,
              size: 24.sp,
              color: AppColors.textColorWhite,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Reviews",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  textColor: AppColors.textColor4,
                ),
                CustomButtons(
                  text: "Add Review",
                  textFontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
            CustomText(
              text: "Customers Feedback",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.textColor2,
            ),
            SizedBox(
              height: 40.h,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomContainer(
                    height: 150,
                    width: double.infinity,
                    color: AppColors.textFormBgColor,
                    borderRadius: 15.r,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Image.asset(
                              myReviewData[index].img.toString(),
                              width: 52.w,
                              height: 52.h,
                            ),
                            title: CustomText(
                              text: myReviewData[index].name,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              textColor: AppColors.textColor4,
                            ),
                            subtitle: CustomText(
                              text: "2 days ago",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              textColor: AppColors.textColor2,
                            ),
                            trailing: CustomContainer(
                              height: 19.h,
                              width: 50.h,
                              color: AppColors.textColorWhite,
                              borderRadius: 5.r,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.primaryColor,
                                    size: 8.sp,
                                  ),
                                  CustomText(
                                    text: myReviewData[index].iconText,
                                    fontSize: 6.sp,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          CustomText(
                            text: AppText.reviewScreenText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.textColor5,
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20.h,
                  );
                },
                itemCount: myReviewData.length)
          ],
        ),
      ),
    );
  }
}
