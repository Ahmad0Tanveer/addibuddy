import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/AboutUsScreen/AboutUsScreen.dart';
import 'package:addibuddy/UI/Screens/ContactUsScreen/ContactUsScreen.dart';
import 'package:addibuddy/UI/Screens/PrivacyPolicyScreen/PrivacyPolicyScreen.dart';
import 'package:addibuddy/UI/Screens/TermsAndConditionsScreen/TermsAndConditionsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HelpScreen extends StatelessWidget {
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
                      text: 'Help',
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
                SizedBox(height: 90.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => ContactUsScreen());
                  },
                  child: HelpScreenButtonWidget(title: 'Contact Us'),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => TermsAndConditionsScreen());
                  },
                  child: HelpScreenButtonWidget(title: 'Terms & Conditions'),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => PrivacyPolicyScreen());
                  },
                  child: HelpScreenButtonWidget(title: 'Privacy Policy'),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => AboutUsScreen());
                  },
                  child: HelpScreenButtonWidget(title: 'About us'),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    //TODO: Add function here
                  },
                  child: HelpScreenButtonWidget(title: 'How to use addi'),
                ),
                SizedBox(height: 180.h),
                SizedBox(
                  width: 331.w,
                  child: quickSandText(
                    text: 'Open the link to learn how to use',
                    color: greyColor,
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 331.w,
                  child: quickSandText(
                    text: ' addi',
                    color: greyColor,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    //TODO: Add function here.
                  },
                  child: quickSandText(
                    text: 'www.youtube.com',
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor,
                    textDecoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelpScreenButtonWidget extends StatelessWidget {
  final String title;

  HelpScreenButtonWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quickSandText(
              text: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.sp,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Divider(),
      ],
    );
  }
}
