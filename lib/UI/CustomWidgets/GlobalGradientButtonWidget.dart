import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalGradientButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String centerTitle;
  final double? titleFontSize;
  GlobalGradientButtonWidget({
    required this.centerTitle,
    this.height,
    this.width,
    this.titleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 381.w,
      height: height ?? 55.h,
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            purpleColor,
            blueColor,
            lightBlueColor,
            tealColor,
          ],
        ),
      ),
      child: Center(
        child: quickSandText(
          text: centerTitle,
          color: whiteColor,
          fontSize: titleFontSize ?? 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
