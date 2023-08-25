import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/circular_indicator/circular_indicator.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Lists/beard_contest_list/beard_contest_list.dart';
import '../beard_contest3/beard_contest.dart';
import '../how_to_paricipate/how_to_participate.dart';

class BeardContestScreen extends StatelessWidget {
  const BeardContestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: "Beard Contest",
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColor4,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "Participate in the Contest",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomContainer(
                height: 160.h,
                width: double.infinity.w,
                color: AppColors.btnColor2,
                borderRadius: 10.r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Center(
                        child: CustomText(
                          text: "Contest Ends in",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          textColor: AppColors.textColor5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCircularIndicatorScreen(
                          text: "2d",
                          val: 0.70,
                        ),
                        CustomCircularIndicatorScreen(
                          text: "18h",
                          val: 0.40,
                        ),
                        CustomCircularIndicatorScreen(
                          text: "45m",
                          val: 0.30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButtons(
                text: "Participate in the Contest",
                textFontSize: 18.sp,
                fontWeight: FontWeight.w600,
                onPress: () {
                  Get.to(() => const ParticipationScreen());
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Leader Board",
                    fontSize: 18.sp,
                    textColor: AppColors.textColor5,
                  ),
                  CustomButtons(
                    text: "View All",
                    textFontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    onPress: () {
                     Get.to(()=>const BeardContest3());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
       SizedBox(
         height: 400.h,
           child: GridView.builder(
             padding: const EdgeInsets.all(0),
             shrinkWrap: true,
             physics:const NeverScrollableScrollPhysics(),
             itemCount: myBeardContestListData.length,
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisSpacing: 20,
             mainAxisSpacing: 20,
             mainAxisExtent: 220,
               crossAxisCount: 2
           ), itemBuilder: (context, index) {
             return  Stack(
               children: [
                 CustomContainer(
                   height: 180.h,
                   width: 177.w,
                   borderRadius: 15.r,
                   color: AppColors.btnColor2,
                 ),
                 Container(

                   height: 134.h,
                   width: 177.w,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(15.w),
                           topRight: Radius.circular(15.w)),
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage(myBeardContestListData[index].image.toString()),
                       )),
                 ),
                 Positioned(
                   bottom: 10.h,
                   left: 8.w,
                   child: Row(

                     children: [
                       CustomContainer(
                         width: 73.w,
                         height: 26.h,
                         color: myBeardContestListData[index].bgColor,
                         borderRadius: 10.r,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Icon(Icons.emoji_events,size: 24.sp,color: myBeardContestListData[index].iconColor,),
                             CustomText(
                               text: myBeardContestListData[index].text1,
                               fontSize: 14.sp,
                               fontWeight: FontWeight.w600,
                               textColor: myBeardContestListData[index].textColor1,
                             )
                           ],
                         ),
                       ),
                       SizedBox(width: 8.w,),
                       CustomText(
                         text: "1455 Votes",
                         fontSize: 10.sp,
                         fontWeight: FontWeight.w600,
                         textColor: AppColors.textColor4,
                       )
                     ],
                   ),
                 )
               ],
             );
           },),
       )
            ],
          ),
        ),
      ),
    );
  }
}
