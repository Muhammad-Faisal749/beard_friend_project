import 'package:beard_friends_project/Lists/Beard_coins_lists/beard_coins_list.dart';
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_png_image/custom_png_image.dart';
import '../barber_profile_collection/barber_profile_colllection.dart';

class BeardCoinsScreen extends StatelessWidget {
  const BeardCoinsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              CustomText(
                text: "Beard Coins",
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColor4,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "Your Collections",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              SizedBox(
                height: 20.h, // Adjust the height as needed
              ),
              ListView.separated(
                padding: EdgeInsets.only(bottom: 10.h),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h,);
                },
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: myBeardData.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                return CustomContainer(
                  width: double.infinity.w,
                  height: 90.h,
                  borderRadius: 20.r,
                  color: AppColors.textFormBgColor,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 70.h,
                        width: 70.w,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(myBeardData[index].image.toString()),
                        ),
                      ),
                      // Add some space between elements
                      Padding(
                        padding:  EdgeInsets.only(top: 18.h, left: 4.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Creative Cuts",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              textColor: AppColors.textColor4,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomContainer(
                                  height: 25.h,
                                  width: 68.w,
                                  color: AppColors.textColorWhite,
                                  borderRadius: 5.r,
                                  child: Center(
                                    child: CustomText(
                                      text: myBeardData[index].text,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w700,
                                      textColor: AppColors.textFormBgColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 7.h,left: 5.w),
                                  child: CustomText(
                                    text: "Coins Collected",
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.textColor5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child:  IconButton(
                            onPressed: (){
                              Get.to(() =>  BarberProfileCollectionsScreen());
                            },
                            icon: const Icon(
                              Icons.navigate_next_outlined,
                              size: 30,
                              color: AppColors.textColor2,
                            ),
                          )
                      )
                    ],
                  ),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
