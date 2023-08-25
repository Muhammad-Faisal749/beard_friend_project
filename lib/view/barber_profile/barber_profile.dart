import 'package:beard_friends_project/Lists/barber_profile_collection_list/barber_profile_selection_list.dart';
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Lists/barber_profile_collection_list/baber_profile_collection2/barber_prfile_text_components.dart';

class BarberProfileScreen extends StatelessWidget {
  bool isText = false;
  String dropDownValue = "one";

  BarberProfileScreen({super.key});

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
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Creative Cuts",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                textColor: AppColors.textColor4,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: CustomContainer(
                                  height: 19.h,
                                  width: 64.w,
                                  color: AppColors.textColorWhite,
                                  borderRadius: 5.r,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: AppColors.primaryColor,
                                        size: 8.sp,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      CustomText(
                                        text: "4.9",
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppColors.primaryColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: CustomButtons(
                                  onPress: (){},
                                  text: "Reservation",
                                  textFontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          CustomText(
                            text: "Koln - Germany",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.textColor4,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Choose Campaign",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    textColor: AppColors.textColor5,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DropDownTextField(
                      textFieldDecoration: InputDecoration(
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none)),
                      dropdownColor: AppColors.primaryColor,
                      listTextStyle: const TextStyle(color: AppColors.textColor2),
                      textStyle: const TextStyle(color: AppColors.textColor2),
                      dropDownList: const [
                        DropDownValueModel(name: "Campaign # 1", value: 1),
                        DropDownValueModel(name: "Campaign # 2", value: 2),
                        DropDownValueModel(name: "Campaign # 3", value: 3),
                      ]),
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
                  SizedBox(
                    height: 20.h,
                  ),
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
                                  borderRadius: BorderRadius.circular(35).r),
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
                                      borderRadius:
                                          BorderRadius.circular(35).r),
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
                                      borderRadius:
                                          BorderRadius.circular(35).r),
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
                              borderRadius: BorderRadius.circular(35).r),
                          child: Image.asset(
                            AppPngImages.portfolio3,
                            width: double.infinity.w,
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
