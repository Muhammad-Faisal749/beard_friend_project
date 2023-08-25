import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_png_image/custom_png_image.dart';
import 'package:beard_friends_project/widgets/custom_search_bar/custom_search_bar.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Lists/Beard_coins_lists/beard_coins_list.dart';
import '../barber_shop_filter/barber_shop_filter.dart';

class BarberShopScreen extends StatefulWidget {

  BarberShopScreen({super.key});

  @override
  State<BarberShopScreen> createState() => _BarberShopScreenState();
}

class _BarberShopScreenState extends State<BarberShopScreen> {
  bool isText = false;

  Color selectedColor = AppColors.btnColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              CustomText(
                text: "Barber Shops",
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColor4,
              ),
              CustomText(
                text: "Barber Shops",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  CustomSearchBar(
                    width: 237.w,
                    prefixIcon: Icons.search,
                    hintText: "Search",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: GestureDetector(
                      onTap: () {},
                      child: CustomContainer(
                        width: 60.w,
                        height: 55.h,
                        borderRadius: 20.r,
                        color: AppColors.btnColor,
                        child: CustomPngImage(
                          imagePath: AppPngImages.calenderImage,
                          width: 22.w,
                          height: 24.h,
                          color: AppColors.textColorWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CustomText(
                text: "Popular Barbers",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.separated(
                padding: EdgeInsets.only(bottom: 10.h),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10.h,
                  );
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
                            backgroundImage:
                                AssetImage(myBeardData[index].image.toString()),
                          ),
                        ),
                        // Add some space between elements
                        Padding(
                          padding: EdgeInsets.only(top: 28.h, left: 3.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    text: "Creative Cuts",
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.textColor4,
                                  ),
                                  CustomContainer(
                                    height: 20.h,
                                    width: 59.w,
                                    color: AppColors.textColorWhite,
                                    borderRadius: 5.r,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: AppColors.textFormBgColor,
                                          size: 9,
                                        ),
                                        CustomText(
                                          text: "4.9",
                                          fontSize: 6.sp,
                                          fontWeight: FontWeight.w700,
                                          textColor: AppColors.textFormBgColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: CustomText(
                                  text: "Pindi - 34 Kms",
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppColors.textColor5,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: IconButton(
                              onPressed: () {
                                showAlertDialog2Screen(context);
                              },
                              icon: const Icon(
                                Icons.navigate_next_outlined,
                                size: 30,
                                color: AppColors.textColor2,
                              ),
                            ))
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
