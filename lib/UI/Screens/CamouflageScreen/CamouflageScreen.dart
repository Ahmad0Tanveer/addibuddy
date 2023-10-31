import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CamouflageScreen extends StatefulWidget {
  @override
  State<CamouflageScreen> createState() => _CamouflageScreenState();
}

class _CamouflageScreenState extends State<CamouflageScreen> {
  bool hideIcon = false;
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
                    text: 'Camouflage',
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
              SizedBox(height: 60.h),
              quickSandText(
                text: 'You have the option of hiding your icons/apps to '
                    'avoid others recognising addi on your phone.',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  quickSandText(
                    text: 'Hide Icon',
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      activeColor: chalkBlueColor,
                      value: hideIcon,
                      onChanged: (val) {
                        setState(() {
                          hideIcon = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              quickSandText(
                text: 'Camouflage',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (i) => GestureDetector(
                    onTap: () {
                      print('This is icon number ${i + 1}');
                    },
                    child: Image.asset(
                      'assets/icons/camouflageIcon${i + 1}.png',
                      width: 90.w,
                      height: 90.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (i) => GestureDetector(
                    onTap: () {
                      print('This is icon number ${i + 5}');
                    },
                    child: Image.asset(
                      'assets/icons/camouflageIcon${i + 5}.png',
                      width: 90.w,
                      height: 90.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              quickSandText(
                text: 'Upload your own',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 40.h),
              Image.asset(
                uploadAppIconImage,
                width: 150.w,
                height: 135.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
