import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWithTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

TextEditingController fullNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController messageController = TextEditingController();

class ContactUsScreen extends StatelessWidget {
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
                      text: 'Contact Us',
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
                CustomMessageWidget(
                  controller: fullNameController,
                  title: 'Full Name',
                  hintText: 'Adam Smith',
                ),
                SizedBox(height: 40.h),
                CustomMessageWidget(
                  controller: emailController,
                  title: 'Email',
                  hintText: 'adam.smith@yourdomain.com',
                ),
                SizedBox(height: 40.h),
                CustomMessageWidget(
                  height: 210.h,
                  borderRadius: 20.r,
                  controller: emailController,
                  title: 'Message',
                  hintText: 'Description',
                ),
                SizedBox(height: 50.h),
                GestureDetector(
                  onTap: () {
                    //TODO: Add function here.
                    Get.back();
                  },
                  child:
                      GlobalGradientButtonWidget(centerTitle: 'Save Message'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
