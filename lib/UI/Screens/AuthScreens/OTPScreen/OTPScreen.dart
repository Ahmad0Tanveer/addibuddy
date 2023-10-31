import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';

import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/ProfileDataScreen/ProfileDataScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 70.h),
                  Image.asset(
                    ADDI_FrontPage_Logo_with_Claim,
                    width: 240.w,
                    height: 150.h,
                  ),
                  SizedBox(height: 62.h),
                  quickSandText(
                    text: 'Confirm Your Number',
                    fontSize: 25.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 43.h),
                  quickSandText(
                    text: 'Enter the code',
                    fontSize: 18.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 40.h),
                  OTPTextFieldWidget(),
                  SizedBox(height: 60.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      quickSandText(
                        text: 'Didn’t get a code?',
                        fontSize: 18.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                      GestureDetector(
                        onTap: () {
                          //TODO: Add function here
                        },
                        child: quickSandText(
                          text: 'Resend',
                          fontSize: 18.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                          textDecoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 90.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProfileDataScreen());
                    },
                    child: CustomButtonWithCenterTitleWidget(
                      title: 'Next',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OTPTextFieldWidget extends StatelessWidget {
  const OTPTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 5,
      borderColor: Color(0xFF512DA8),
      fillColor: whiteColor,
      filled: true,
      fieldWidth: 52.w,
      focusedBorderColor: tealColor,
      borderRadius: BorderRadius.circular(15.r),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }
}
