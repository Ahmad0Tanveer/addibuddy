import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  CustomTextFieldWidget({
    required this.controller,
    required this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 381.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 24,
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: quickSandTextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
                color: lightGreyColor,
              )),
        ),
      ),
    );
  }
}
