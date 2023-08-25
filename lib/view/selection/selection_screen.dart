import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_constants/app_text.dart';
import 'package:beard_friends_project/view/login/login_screen.dart';
import 'package:beard_friends_project/widgets/Buttons/custom_buttons.dart';
import 'package:beard_friends_project/widgets/custom_container/custom_container.dart';
import 'package:beard_friends_project/widgets/custom_sized_box/custom_sized_box.dart';
import 'package:beard_friends_project/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../model/selection_model/selection_model.dart';

class SelectionScreen extends StatefulWidget {
  SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {


  List<SelectionModel> selectionData = [
    SelectionModel(
        icon: Icons.person_outline_outlined, name: AppText.selectionText3),
    SelectionModel(
        icon: Icons.shopping_bag_outlined, name: AppText.selectionText3)
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(
              height: 150.h,
            ),
            Center(
              child: CustomText(
                text: AppText.selectionText1,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.textColorWhite,
              ),
            ),
            CustomSizedBox(
              height: 5.h,
            ),
            Center(
              child: CustomText(
                text: AppText.selectionText4,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.textColor2,
              ),
            ),
            CustomSizedBox(
              height: 70.h,
            ),
            SizedBox(
              height: 280.h,
              child: ListView.separated(
                itemCount: selectionData.length,
                separatorBuilder: (context, index) {
                  return  SizedBox(
                      height: 45.h,
                  );
                },

                // itemExtent: 100.h,

                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        current = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30).r,
                      child: CustomContainer(
                        width: double.infinity,
                        height: 100.h,
                        color: current == index ? AppColors.btnColor : AppColors.btnColor2,
                        borderRadius: 20,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Icon(
                                selectionData[index].icon,
                                color: AppColors.iconColorWhite,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: CustomText(
                                text: selectionData[index].name,
                                textColor: AppColors.textColorWhite,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220,right: 25,top: 50),
              child: CustomButtons(
                isIcon: true,
                text: AppText.selectionText5,
                onPress: (){
                  Get.to(() => const LoginScreen());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
