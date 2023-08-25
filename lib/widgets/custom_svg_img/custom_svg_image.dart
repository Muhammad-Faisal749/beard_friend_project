import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomSvgImage extends StatelessWidget {
  final String svgPath;
  final double width;
  final double height;
  final Color ?color;

  const CustomSvgImage({
    super.key,
    required this.svgPath,
    required this.width,
    required this.height,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: width,
      height: height,
      color: color,
    );
  }
}
