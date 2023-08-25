// import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
// import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
// import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
// import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class BeardContestScreen extends StatelessWidget {
//   const BeardContestScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       body: Padding(
//         padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Icon(
//               Icons.arrow_back_ios_outlined,
//               size: 24.sp,
//               color: AppColors.textColorWhite,
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             CustomText(
//               text: "Reservations",
//               fontSize: 24.sp,
//               fontWeight: FontWeight.w700,
//               textColor: AppColors.textColor4,
//             ),
//             CustomText(
//               text: "All of Your Reservations",
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w500,
//               textColor: AppColors.textColor2,
//             ),
//             SizedBox(
//               height: 40.h,
//             ),
//             CustomContainer(
//               height: 100,
//               width: double.infinity,
//               color: AppColors.textFormBgColor,
//               borderRadius: 15.r,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10.h),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListTile(
//                         contentPadding: const EdgeInsets.all(0),
//                         leading: Image.asset(
//                           AppPngImages.reviewImage1,
//                           width: 52.w,
//                           height: 52.h,
//                         ),
//                         title: CustomText(
//                           text: "Creative Cuts",
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w600,
//                           textColor: AppColors.textColor4,
//                         ),
//                         subtitle: Row(
//                           children: [
//                             CustomText(
//                               text: "4:00 PM on 04-03-2023",
//                               fontSize: 10.sp,
//                               fontWeight: FontWeight.w600,
//                               textColor: AppColors.textColor2,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 10.w),
//                               child: Icon(
//                                 Icons.edit,
//                                 size: 10.sp,
//                                 color: AppColors.textColorWhite,
//                               ),
//                             )
//                           ],
//                         ),
//                         trailing: Icon(
//                           Icons.navigate_next,
//                           size: 24.sp,
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
