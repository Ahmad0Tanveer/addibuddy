import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountRecoverScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Image.asset(
                  ADDI_FrontPage_Logo_with_Claim,
                  width: 240.w,
                  height: 150.h,
                ),
                SizedBox(height: 100.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: quickSandText(
                    text: 'Enter Email',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                ),
                SizedBox(height: 16.h),
                CustomTextFieldWidget(
                  hintText: 'Email',
                  controller: emailController,
                ),
                SizedBox(height: 60.h),
                GestureDetector(
                  onTap: () {
                    Get.to(() => MainBottomSheetScreen());
                  },
                  child: CustomButtonWithCenterTitleWidget(
                    title: 'Send me a link',
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
