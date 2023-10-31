import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/Strings.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SafetyTipsScreen extends StatelessWidget {
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
                      text: 'Safety Tips',
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
                SingleChildScrollView(
                  child: SizedBox(
                    height: 1.sh,
                    child: Markdown(
                      data: safetyTipsText,
                      styleSheet: MarkdownStyleSheet(
                        a: quickSandTextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                        p: quickSandTextStyle(
                          fontSize: 19.sp,
                          color: greyColor,
                        ),
                        listBullet: quickSandTextStyle(
                          fontSize: 19.sp,
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
