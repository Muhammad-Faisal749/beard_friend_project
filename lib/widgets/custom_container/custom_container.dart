import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final bool? hasBorder;
  final Color? color;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Widget? child;

  CustomContainer({
    this.color,
    this.width,
    this.height,
    this.borderRadius,
    this.child,
    this.hasBorder
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius!,),
        // border:Border.all(
        //   color: hasBorder ? AppColors.textColorWhite
        // ) : null,
      ),
      child: child,
    );
  }
}
