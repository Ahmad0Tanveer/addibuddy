import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWithCenterTitleWidget extends StatelessWidget {
  final String title;
  CustomButtonWithCenterTitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 381.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(32.r),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: quickSandText(
          text: title,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: skyBlueColor,
        ),
      ),
    );
  }
}
