import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/Strings.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/ChangePasswordScreen/ChangePasswordScreen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountSettingScreen extends StatefulWidget {
  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  String? selectedValue;
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
                      text: 'Account',
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
                SizedBox(height: 40.h),
                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: quickSandText(
                        text: 'Select Language',
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w600,
                        color: greyColor,
                      ),
                      items: languageOptions.map<DropdownMenuItem<String>>(
                          (Map<String, dynamic> country) {
                        return DropdownMenuItem<String>(
                          value: country['name'],
                          child: Row(
                            children: [
                              Image.asset(
                                country['image'],
                                width: 30.w,
                                height: 30.h,
                              ),
                              SizedBox(width: 10),
                              Text(country['name']),
                            ],
                          ),
                        );
                      }).toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      iconSize: 35.sp,
                      iconEnabledColor: blackColor,
                      buttonHeight: 60.h,
                      buttonWidth: 381.w,
                      // buttonPadding: EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      buttonElevation: 0,
                      itemHeight: 40,
                      dropdownElevation: 8,
                      scrollbarRadius: Radius.circular(25),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: false,
                    ),
                  ),
                ),
                Divider(color: greyColor),
                SizedBox(height: 10.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => ChangePasswordScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            changePasswordIcon,
                            width: 40.w,
                            height: 40.h,
                          ),
                          SizedBox(width: 10.w),
                          quickSandText(
                            text: 'Change Password',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(color: greyColor),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SizedBox(width: 5.w),
                    Icon(
                      Icons.delete_forever,
                      color: redColor,
                      size: 30.sp,
                    ),
                    SizedBox(width: 20.w),
                    quickSandText(
                      text: 'Remove Account',
                      color: redColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Divider(color: greyColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
