import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Strings.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        dottedBackIcon,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                    quickSandText(
                      text: 'About us',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Image.asset(
                      dottedBackIcon,
                      color: Colors.transparent,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                quickSandText(
                  text: aboutUsText,
                  fontSize: 16.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
