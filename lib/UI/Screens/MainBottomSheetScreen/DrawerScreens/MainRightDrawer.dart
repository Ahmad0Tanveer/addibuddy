import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/FollowMeScreen/FollowMeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainRightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(65.r),
            topLeft: Radius.circular(65.r),
          ),
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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  quickSandText(
                    text: 'addibuddies',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                  SizedBox(height: 20.h),
                  Divider(
                    color: whiteColor,
                    thickness: 1.2,
                  ),
                  SizedBox(height: 10.h),
                  Image.asset(
                    addBuddyButtonIcon,
                    width: 120.w,
                    height: 120.h,
                  ),
                  SizedBox(height: 30.h),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'addibuddies ',
                          style: quickSandTextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: whiteColor,
                          ),
                        ),
                        TextSpan(
                          text: 'are your connections of friends and family '
                              'members who you choose to invite to follow you to your '
                              'destination.',
                          style: quickSandTextStyle(
                            fontSize: 15.sp,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  quickSandText(
                    text: 'Connections',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Image.asset(
                        personDummyImage,
                        width: 42.w,
                        height: 42.h,
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          quickSandText(
                            text: 'Jason Brown',
                            fontSize: 12.sp,
                            color: whiteColor,
                          ),
                          SizedBox(height: 5.h),
                          quickSandText(
                            text: '06328287687',
                            fontSize: 10.sp,
                            color: whiteColor,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Divider(
                    color: whiteColor,
                    thickness: 1.5,
                  ),
                  SizedBox(height: 25.h),
                  quickSandText(
                    text: 'Send Invitations',
                    fontSize: 17.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Image.asset(
                        personDummyImage,
                        width: 42.w,
                        height: 42.h,
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          quickSandText(
                            text: 'Jason Brown',
                            fontSize: 12.sp,
                            color: whiteColor,
                          ),
                          SizedBox(height: 5.h),
                          quickSandText(
                            text: '06328287687',
                            fontSize: 10.sp,
                            color: whiteColor,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  FollowMeScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
