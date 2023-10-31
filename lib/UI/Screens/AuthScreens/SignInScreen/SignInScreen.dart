import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/AccountRecoverScreen/AccountRecoverScreen.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/SignUpScreen/SignUpScreen.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 70.h),
                Image.asset(
                  ADDI_FrontPage_Logo_with_Claim,
                  width: 240.w,
                  height: 150.h,
                ),
                SizedBox(height: 100.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: quickSandText(
                    text: 'Sign in',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                ),
                SizedBox(height: 16.h),
                CustomTextFieldWidget(
                  hintText: 'Username',
                  controller: userNameController,
                ),
                SizedBox(height: 25.h),
                CustomTextFieldWidget(
                  hintText: 'Password',
                  controller: passController,
                ),
                SizedBox(height: 41.h),
                GestureDetector(
                  onTap: () {
                    Get.to(() => AccountRecoverScreen());
                  },
                  child: quickSandText(
                    text: 'Problem signing in? Click here',
                    fontSize: 18.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                    textDecoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 56.h),
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => MainBottomSheetScreen());
                  },
                  child: CustomButtonWithCenterTitleWidget(title: 'Next'),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    quickSandText(
                      text: 'Don’t have an account?',
                      fontSize: 18.sp,
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: quickSandText(
                        text: 'Register',
                        fontSize: 18.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        textDecoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
