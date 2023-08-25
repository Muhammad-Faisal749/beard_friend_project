

import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Lists/beard_contest_list/beard_contest_list.dart';
import '../../utils/app_colors/apps_colors.dart';
import '../../widgets/custom_container/custom_container.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../beard_contest5/beard_contest.dart';

class BeardContest3 extends StatelessWidget {
  const BeardContest3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
     body: Padding(
       padding:  EdgeInsets.symmetric(horizontal: 20.h),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 50.h,),
           CustomText(
             text: "Beard Contest",
             fontSize: 24.sp,
             fontWeight: FontWeight.w700,
             textColor: AppColors.textColor4,
           ),
           CustomText(
             text: "Most Liked Beard from this Contest",
             fontSize: 16.sp,
             fontWeight: FontWeight.w500,
             textColor: AppColors.textColor2,
           ),
           SizedBox(height: 30.h,),
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
               return  GestureDetector(
                 onTap: (){
                   Get.to(()=>const BeardContest5());
                 },
                 child: Stack(
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
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image.asset(AppPngImages.splash1,width: 28.w,height: 24.h,),
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
                 ),
               );
             },),
           )
         ],
       ),
     ),
    );
  }
}
