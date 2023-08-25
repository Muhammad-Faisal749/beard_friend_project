import 'package:beard_friends_project/Lists/barber_profile_collection_list/barber_profile_selection_list.dart';
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Lists/barber_profile_collection_list/baber_profile_collection2/barber_prfile_text_components.dart';

class BarberProfileCollectionsScreen extends StatelessWidget {
  bool isText = false;

  BarberProfileCollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity.w,
                  height: 380.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppPngImages.barberProfileCollection,
                    ),
                  )),
                ),
                Container(
                  width: double.infinity.w,
                  height: 380.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppPngImages.barberProfile,
                    ),
                  )),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 25.r,
                          color: AppColors.textColorWhite,
                        ),
                      ),
                      const CustomPngImage(
                        imagePath: AppPngImages.barberLike,
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Your Collection",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        textColor: AppColors.textColor5,
                      ),
                      CustomContainer(
                        width: 65.w,
                        height: 25.h,
                        color: AppColors.textColorWhite,
                        borderRadius: 5.r,
                        child: Center(
                          child: CustomText(
                            text: "03 / 10",
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.textFormBgColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: myProfileSelectionData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10.h,
                      mainAxisSpacing: 10.w,
                    ),
                    padding: const EdgeInsets.all(0).r,
                    itemBuilder: (context, index) {
                      if (index < 3) {
                        return Container(
                          width: 64.w,
                          height: 64.w,
                          decoration: BoxDecoration(
                            color: myProfileSelectionData[index].color,
                            borderRadius: BorderRadius.circular(15).r,
                          ),
                          child: const Center(
                            child: CustomPngImage(
                              imagePath: AppPngImages.splash1,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        );
                      } else if (index == 9) {
                        return Container(
                          width: 64.w,
                          height: 64.w,
                          decoration: BoxDecoration(
                            color: myProfileSelectionData[index].color,
                            borderRadius: BorderRadius.circular(15).r,
                          ),
                          child: Center(
                              child: CustomText(
                            text: "Free",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.textColor4,
                          )),
                        );
                      } else {
                        return Container(
                          width: 64.w,
                          height: 64.w,
                          decoration: BoxDecoration(
                            color: myProfileSelectionData[index].color,
                            borderRadius: BorderRadius.circular(15).r,
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const AboutText(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const DescriptionText(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const BarberDetails(),
                  SizedBox(
                    height: 2.h,
                  ),
                  const BarberDetailsText(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ShopDetails(),
                  SizedBox(
                    height: 2.h,
                  ),
                  const ShopDetailsText(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const PriceList(),
                  SizedBox(
                    height: 2.h,
                  ),
                  const PriceListDetails(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const OpeningTiming(),
                  const OpeningTimingDetails(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Portfolio(),
                  Container(
                    width: double.infinity.w,
                    height: 330.h,
                    decoration: BoxDecoration(
                        color: AppColors.btnColor2,
                        borderRadius: BorderRadius.circular(20).r),
                    child: Column(

                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10).r,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35).r
                              ),
                              child: Image.asset(
                                AppPngImages.portfolio1,
                                width: 160.w,
                                height: 135.h,
                                fit: BoxFit.cover,
                              ),
                            ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10).r,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35).r
                                    ),
                                    child: Image.asset(
                                      AppPngImages.portfolio2,
                                      width: 110.w,
                                      height: 60.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),


                                   Container(
                                     padding: const EdgeInsets.all(10).r,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(35).r
                                     ),
                                     child: Image.asset(
                                          AppPngImages.portfolio3,
                                          width: 110.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                   ),
                                ],
                              ),

                           ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(10).r,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(35).r
                           ),
                            child: Image.asset(
                              AppPngImages.portfolio3,
                              width:double.infinity.w,
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                          ),

                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
