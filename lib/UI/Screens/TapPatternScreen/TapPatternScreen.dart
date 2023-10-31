import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TapPatternScreen extends StatefulWidget {
  @override
  State<TapPatternScreen> createState() => _TapPatternScreenState();
}

class _TapPatternScreenState extends State<TapPatternScreen> {
  int tapPattern = 0;
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
                    text: 'Tap Pattern',
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
              SizedBox(height: 150.h),
              Column(
                children: [
                  quickSandText(
                    text: 'Tap to register',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 50.h),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                      tapPattern >= 6 ? SizedBox() : tapPattern++;
                    },
                    child: Container(
                      width: 384.w,
                      height: 251.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 18,
                            offset: Offset(7, 7),
                            color: lightGreyColor,
                            spreadRadius: 0,
                          )
                        ],
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          quickSandText(
                            text: tapPattern.toString(),
                            color: whiteColor,
                            fontSize: 70.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(height: 20.h),
                          quickSandText(
                            text: 'TAP PATTERN ACTIVE',
                            color: whiteColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                            tapPattern = 0;
                          },
                          child: Container(
                            width: 125.w,
                            height: 35.h,
                            decoration: ShapeDecoration(
                              color: Color(0xffE0E0E0),
                              shape: StadiumBorder(),
                              shadows: [
                                BoxShadow(
                                  offset: Offset(0, 3),
                                  color: lightGreyColor,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Center(
                              child: quickSandText(
                                text: 'Clear',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            width: 125.w,
                            height: 35.h,
                            decoration: ShapeDecoration(
                              color: chalkBlueColor,
                              shape: StadiumBorder(),
                              shadows: [
                                BoxShadow(
                                  offset: Offset(0, 3),
                                  color: lightGreyColor,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Center(
                              child: quickSandText(
                                text: 'OK',
                                color: whiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
