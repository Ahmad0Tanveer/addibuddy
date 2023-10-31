import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

TextEditingController donationEmailController = TextEditingController();

class DonationScreen extends StatefulWidget {
  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  int selectedOption = 1; // Default selected option

  bool showOtherInput = false;
  TextEditingController otherAmountController = TextEditingController();

  void toggleOtherInput(bool value) {
    setState(() {
      showOtherInput = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: whiteColor,
                          size: 30.sp,
                        ),
                      ),
                      quickSandText(
                        text: 'Help us to help you',
                        color: whiteColor,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.transparent,
                        size: 30.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Image.asset(
                  donationScreenImage,
                  width: 150.w,
                  height: 150.h,
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 380.w,
                  height: 300.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: MarkdownBody(
                    data:
                        '''# **addi** are passionate about your well-being when out and about and wish to support likeminded charities/ organisations. **addi** will donate a percentage to chosen charities/ organisations in the field of personal safety. If you wish to help us support their work, you can do so by making a donation below.\n'''
                        '''# If you wish to find out more about the organisation you helped **addi** to support, please provide us with your email:''',
                    styleSheet: MarkdownStyleSheet(
                      h1: quickSandTextStyle(
                        fontSize: 19.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                CustomTextFieldWidget(
                  controller: donationEmailController,
                  hintText: 'Email',
                ),
                SizedBox(height: 30.h),
                Divider(color: whiteColor, thickness: 1),
                SizedBox(height: 30.h),
                Column(
                  children: [
                    RadioListTile(
                      title: quickSandText(
                        text: '\£1',
                        fontSize: 20.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                      value: 1,
                      groupValue: selectedOption,
                      activeColor: whiteColor,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          toggleOtherInput(false);
                        });
                      },
                    ),
                    RadioListTile(
                      title: quickSandText(
                        text: '\£2',
                        fontSize: 20.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                      value: 2,
                      groupValue: selectedOption,
                      activeColor: whiteColor,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          toggleOtherInput(false);
                        });
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: quickSandText(
                              text: 'Other',
                              fontSize: 20.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                            value: 3,
                            groupValue: selectedOption,
                            activeColor: whiteColor,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                                toggleOtherInput(true);
                              });
                            },
                          ),
                        ),
                        showOtherInput
                            ? Container(
                                width: 120.w,
                                padding:
                                    EdgeInsets.only(left: 10.w, right: 20.w),
                                margin: EdgeInsets.only(right: 100.w),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: TextField(
                                  controller: otherAmountController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    suffix: quickSandText(text: '\£'),
                                    border: InputBorder.none,
                                    hintText: 'Enter amount',
                                    hintStyle: quickSandTextStyle(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                CustomButtonWithCenterTitleWidget(title: 'DONATE'),
                SizedBox(height: 30.h),
                CustomButtonWithCenterTitleWidget(title: 'SHARE'),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
