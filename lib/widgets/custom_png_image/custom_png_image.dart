import 'package:flutter/material.dart';

class CustomPngImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final Color? color;

  const CustomPngImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      color: color,
    );
  }
}
