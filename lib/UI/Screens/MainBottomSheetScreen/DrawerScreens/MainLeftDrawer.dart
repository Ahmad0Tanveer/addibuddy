import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/SignInScreen/SignInScreen.dart';
import 'package:addibuddy/UI/Screens/DonationScreen/DonationScreen.dart';
import 'package:addibuddy/UI/Screens/HelpScreen/HelpScreen.dart';
import 'package:addibuddy/UI/Screens/HistoryScreen/HistoryScreen.dart';
import 'package:addibuddy/UI/Screens/PremiumScreen/PremiumFeaturesetScreen.dart';
import 'package:addibuddy/UI/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:addibuddy/UI/Screens/SafetyTipsScreen/SafetyTipsScreen.dart';
import 'package:addibuddy/UI/Screens/SettingsScreen/SettingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainLeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(65.r),
            topRight: Radius.circular(65.r),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              purpleColor,
              blueColor,
              lightBlueColor,
              tealColor,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => ProfileScreen());
                },
                child: Column(
                  children: [
                    Image.asset(
                      personDummyImage,
                      width: 116.w,
                      height: 116.h,
                    ),
                    SizedBox(height: 20.h),
                    quickSandText(
                      text: 'Jason Brown',
                      color: whiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SettingsScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: settingsIcon,
                        title: 'Settings',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => HistoryScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: historyIcon,
                        title: 'History',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {},
                      child: DrawerOptionsWidget(
                        leadingIcon: shareIcon,
                        title: 'Share App',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SafetyTipsScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: safetyTipsIcon,
                        title: 'Safety Tips',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => PremiumFeatureSetScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: premiumIconWhite,
                        title: 'addi Premium',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => HelpScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: helpIcon,
                        title: 'Help',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => DonationScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: donateIcon,
                        title: 'Donate',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => SignInScreen());
                      },
                      child: DrawerOptionsWidget(
                        leadingIcon: logoutIcon,
                        title: 'Logout',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerOptionsWidget extends StatelessWidget {
  final String leadingIcon;
  final String title;

  DrawerOptionsWidget({
    required this.leadingIcon,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          leadingIcon,
          width: 25.w,
          height: 25.h,
        ),
        SizedBox(width: 16.w),
        quickSandText(
          text: '$title',
          color: whiteColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
