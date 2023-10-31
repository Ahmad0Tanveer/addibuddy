import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  personDummyImage,
                  width: 137.w,
                  height: 137.h,
                ),
                Positioned(
                  bottom: -20.h,
                  child: GestureDetector(
                    onTap: () {
                      //TODO: add function here.
                    },
                    child: Image.asset(
                      addProfileImageIcon,
                      width: 50.w,
                      height: 50.h,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Jason',
                      hintStyle: quickSandTextStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Brown',
                      hintStyle: quickSandTextStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Column(
                    children: [
                      SizedBox(
                        height: 46.h,
                        width: 1.sw,
                        child: Row(
                          children: [
                            CountryCodePicker(
                              onChanged: print,
                              textStyle: quickSandTextStyle(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              initialSelection: 'USA',
                              favorite: ['+39', 'FR'],
                              // optional. Shows only country name and flag
                              showCountryOnly: false,
                              showFlag: false,
                              // optional. Shows only country name and flag when popup is closed.
                              showOnlyCountryWhenClosed: false,
                              // optional. aligns the flag and the Text left
                              alignLeft: false,
                              flagDecoration:
                                  BoxDecoration(shape: BoxShape.circle),
                              flagWidth: 40,
                              padding: EdgeInsets.zero,
                            ),
                            VerticalDivider(
                              indent: 5.h,
                              endIndent: 5.h,
                              color: blackColor,
                            ),
                            Expanded(
                              child: TextField(
                                // controller: numberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '3187890809',
                                  hintStyle: quickSandTextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                style: quickSandTextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: blackColor),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '*******',
                      hintStyle: quickSandTextStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: GlobalGradientButtonWidget(
                      centerTitle: 'Save Changes',
                      titleFontSize: 15.sp,
                      width: 186.w,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
