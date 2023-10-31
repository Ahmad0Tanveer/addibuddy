import 'dart:async';

import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FollowMeOpenCardWidget extends StatefulWidget {
  @override
  State<FollowMeOpenCardWidget> createState() => _FollowMeOpenCardWidgetState();
}

class _FollowMeOpenCardWidgetState extends State<FollowMeOpenCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    sizeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);

    controller.addListener(() {
      setState(() {});
    });
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.stop();
    super.dispose();
  }

  void startAnimation() {
    controller.forward();
  }

  void startTimer() {
    Timer.periodic(
      Duration(seconds: 10),
      (timer) {
        startAnimation();
        timer.cancel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel model =
        Provider.of<MainBottomSheetScreenModel>(context);

    return Container(
      // height: (sizeAnimation.value * 200) + 230.h,
      width: 1.sw,
      color: whiteColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 212.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: yelloColor,
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.5),
                      offset: Offset(2, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AlarmOnBoardingImageBottom,
                      color: whiteColor,
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(width: 20.w),
                    quickSandText(
                      text: 'Alarm',
                      color: whiteColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Container(
                width: 212.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: chalkBlueColor,
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.5),
                      offset: Offset(2, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      chatIcon,
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(width: 20.w),
                    quickSandText(
                      text: 'Chat',
                      color: whiteColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              controller.reverse();
              startTimer();
            },
            child: AnimatedContainer(
              height: sizeAnimation.value * 200,
              width: 1.sw,
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
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
                child: SizedBox(
                  width: 200.w,
                  child: quickSandText(
                    text: 'TAP PATTERN ACTIVE',
                    color: whiteColor,
                    textAlign: TextAlign.center,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                personDummyImage,
                width: 46.w,
                height: 46.h,
              ),
              SizedBox(width: 20.w),
              quickSandText(
                text: 'Mom',
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 40.w),
              GestureDetector(
                onTap: () {
                  model.isFollowOn(false);
                },
                child: Container(
                  width: 70.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                  child: Center(
                    child: quickSandText(
                      text: 'Stop',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 115.w),
              Image.asset(
                addProfileImageIcon,
                width: 40.w,
                height: 40.h,
              ),
            ],
          ),
          SizedBox(height: 35.h),
          Container(
            width: 285.w,
            height: 55.h,
            decoration: BoxDecoration(
              color: chalkBlueColor,
              borderRadius: BorderRadius.circular(17.r),
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.25),
                  offset: Offset(0, 4),
                  blurRadius: 40,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                quickSandText(
                  text: 'End Journey',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  textAlign: TextAlign.center,
                ),
                quickSandText(
                  text: '10 Minutes',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: whiteColor,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
