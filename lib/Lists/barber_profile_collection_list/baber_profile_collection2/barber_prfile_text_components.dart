

import 'package:beard_friends_project/Lists/barber_text_list/barber_profile_list.dart';
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




//About Text Component
class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "About",
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor5,
    );
  }
}
//About Text Description Components
 class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: AppText.profileCollectionText,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor2,
    );
  }
}

//Barber Details Components
class BarberDetails extends StatelessWidget {
  const BarberDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "BarberDetails",
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor5,
    );
  }
}

//Barber Details  Text Components
class BarberDetailsText extends StatelessWidget {
  const BarberDetailsText ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: myTextData1.length,
        itemExtent: 40,
        shrinkWrap:true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: myTextData1[index].text1,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              textColor: AppColors.textColor2,
            ),

            CustomText(
              text: myTextData1[index].text2,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              textColor: AppColors.textColor5,
            ),
          ],
        );
      },),
    );
  }
}


//Shop Details Components
class ShopDetails extends StatelessWidget {
  const ShopDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "Shop Details",
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor5,
    );
  }
}

//Shop Details Components
class ShopDetailsText extends StatelessWidget {
   const ShopDetailsText ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: myTextData2.length,
        itemExtent: 40,
        shrinkWrap:true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                textAlign: TextAlign.justify,
                text: myTextData2[index].text1,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor2,
              ),

              CustomText(
                textAlign: TextAlign.justify,
                text: myTextData2[index].text2,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
            ],
          );
        },),
    );
  }
}


class PriceList extends StatelessWidget {
  const PriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "Price List",
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor5,
    );
  }
}

class PriceListDetails extends StatelessWidget {
    const PriceListDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: myTextData3.length,
        itemExtent: 40,
        shrinkWrap:true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                textAlign: TextAlign.justify,
                text: myTextData3[index].text1,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor2,
              ),

              CustomText(
                textAlign: TextAlign.justify,
                text: myTextData3[index].text2,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
            ],
          );
        },),
    );
  }
}

//opening Time Components
class OpeningTiming extends StatelessWidget {
   const OpeningTiming({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "Opening Timing",
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor5,
    );
  }
}

//opening Time Detail Components

class OpeningTimingDetails extends StatelessWidget {
  const OpeningTimingDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: myTextData4.length,
        itemExtent: 40,
        shrinkWrap:true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                textAlign: TextAlign.justify,
                text: myTextData4[index].text1,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor2,
              ),

              CustomText(
                textAlign: TextAlign.justify,
                text: myTextData4[index].text2,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.textColor5,
              ),
            ],
          );
        },),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "Portfolio",
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.textColor5,
    );
  }
}