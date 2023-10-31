import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/BackgroundColorSettingScreen/BackgroundColorSettingScreen.dart';
import 'package:addibuddy/UI/Screens/CamouflageScreen/CamouflageScreen.dart';
import 'package:addibuddy/UI/Screens/MessageCustomisationScreen/MessageCustomisationScreen.dart';
import 'package:addibuddy/UI/Screens/TapPatternScreen/TapPatternScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomisationScreen extends StatefulWidget {
  @override
  State<CustomisationScreen> createState() => _CustomisationScreenState();
}

class _CustomisationScreenState extends State<CustomisationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                    text: 'Customisation',
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
              SizedBox(height: 80.h),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Get.to(() => TapPatternScreen());
                },
                child: CustomisationScreenButtonWidget(
                  title: 'Tap Pattern',
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Get.to(() => CamouflageScreen());
                },
                child: CustomisationScreenButtonWidget(
                  title: 'Camouflage',
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Get.to(() => MessageCustomisationScreen());
                },
                child: CustomisationScreenButtonWidget(
                  title: 'Message customisation',
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Get.to(() => BackgroundColorSettingScreen());
                },
                child: CustomisationScreenButtonWidget(
                  title: 'Background colour',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomisationScreenButtonWidget extends StatelessWidget {
  final String title;
  CustomisationScreenButtonWidget({required this.title});

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
            Row(
              children: [
                Image.asset(
                  premiumCrownIcon,
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 10.w),
                Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20.h),
        Divider(color: lightGreyColor, thickness: 0.2),
      ],
    );
  }
}
