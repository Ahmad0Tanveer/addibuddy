import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWithTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

TextEditingController oldPasswordController = TextEditingController();
TextEditingController newPasswordController = TextEditingController();
TextEditingController newConfirmPasswordController = TextEditingController();

class ChangePasswordScreen extends StatelessWidget {
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
                      text: 'Change Password',
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
                SizedBox(height: 70.h),
                CustomMessageWidget(
                  title: 'Old Password',
                  controller: oldPasswordController,
                  hintText: 'Old Password',
                ),
                SizedBox(height: 25.h),
                CustomMessageWidget(
                  title: 'New Password',
                  controller: newPasswordController,
                  hintText: 'New Password',
                ),
                SizedBox(height: 25.h),
                CustomMessageWidget(
                  title: 'Confirm New Password',
                  controller: newConfirmPasswordController,
                  hintText: 'Confirm New Password',
                ),
                SizedBox(height: 200.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: GlobalGradientButtonWidget(
                    width: 186.w,
                    centerTitle: 'Save Changes',
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
