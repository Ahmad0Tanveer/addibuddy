import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Constants/TextStyles.dart';

class OnBoardingPagesCardWidget extends StatelessWidget {
  final String topImage;
  final String title;
  final String bottomImage;
  final Widget centerWidget;
  OnBoardingPagesCardWidget({
    required this.bottomImage,
    required this.topImage,
    required this.title,
    required this.centerWidget,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 383.w,
        height: 500.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.25),
              offset: Offset(13, 12),
              blurRadius: 18,
              spreadRadius: 0.5,
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
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 70.h),
                quickSandText(
                  text: title,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: centerWidget,
                ),
              ],
            ),
            Positioned(
              top: -200.h,
              child: Image.asset(
                topImage,
                width: 300.w,
                height: 260.h,
              ),
            ),
            Positioned(
              bottom: -50.h,
              child: Container(
                width: 93.w,
                height: 93.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: blackColor.withOpacity(0.35),
                      offset: Offset(0, 4),
                      blurRadius: 40,
                      spreadRadius: 0.1,
                    )
                  ],
                  border: Border.all(
                    color: whiteColor,
                    width: 2,
                  ),
                  color: lightBlueColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    bottomImage,
                    height: 40.h,
                    width: 43.w,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
