import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileDataScreen extends StatefulWidget {
  @override
  State<ProfileDataScreen> createState() => _ProfileDataScreenState();
}

class _ProfileDataScreenState extends State<ProfileDataScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool agrementCheck = false;
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
                  SizedBox(height: 33.h),
                  quickSandText(
                    text: 'Nearly there! Please enter your details',
                    fontSize: 19.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 30.h),
                  CustomTextFieldWidget(
                    controller: firstNameController,
                    hintText: 'First Name',
                  ),
                  SizedBox(height: 25.h),
                  CustomTextFieldWidget(
                    controller: lastNameController,
                    hintText: 'Last Name',
                  ),
                  SizedBox(height: 25.h),
                  CustomTextFieldWidget(
                    controller: userNameController,
                    hintText: 'User Name',
                  ),
                  SizedBox(height: 25.h),
                  CustomTextFieldWidget(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Checkbox(
                          value: agrementCheck,
                          checkColor: blackColor,
                          fillColor: MaterialStateProperty.all(whiteColor),
                          onChanged: (val) {
                            setState(() {});
                            agrementCheck = val!;
                          }),
                      quickSandText(
                        text: 'Agree to terms and conditions',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: whiteColor,
                      )
                    ],
                  ),
                  SizedBox(height: 40.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => MainBottomSheetScreen());
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
