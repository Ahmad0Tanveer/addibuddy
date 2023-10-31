import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/Strings.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomDropDownFieldWithTitleandLeadingImage.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/OTPScreen/OTPScreen.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/SignUpScreen/Widgets/NumberTextFieldWidget.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController numberController = TextEditingController();

  Country? selectedlanguage;
  Country? selectedCountry;

  List<String> languageList = [
    'Spanish',
    'English',
    'French',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                  SizedBox(height: 100.h),
                  NumberTextFieldWidget(numberController: numberController),
                  SizedBox(height: 35.h),
                  GestureDetector(
                    onTap: () {},
                    child: CustomDropDownFieldWithTitleandLeadingImage(
                      Items: languageOptions,
                      title: 'Select Language',
                      hintText: selectedlanguage == null
                          ? 'Select Language'
                          : selectedlanguage!.displayNameNoCountryCode,
                    ),
                  ),
                  SizedBox(height: 35.h),
                  GestureDetector(
                    onTap: () {
                      showCountryPicker(
                          context: context,
                          countryListTheme: CountryListThemeData(
                            flagSize: 25,
                            backgroundColor: Colors.white,
                            textStyle:
                                TextStyle(fontSize: 16, color: Colors.blueGrey),
                            bottomSheetHeight:
                                600.h, // Optional. Country list modal height
                            //Optional. Sets the border radius for the bottomsheet.
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            //Optional. Styles the search field.
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color(0xFF8C98A8).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                          onSelect: (Country country) {
                            setState(() {});
                            selectedCountry = country;
                          });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        quickSandText(
                          text: 'Select Country',
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w700,
                          color: whiteColor,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: double.infinity,
                          height: 60.h,
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              quickSandText(
                                text: selectedCountry == null
                                    ? 'Select Country'
                                    : selectedCountry!.displayNameNoCountryCode,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600,
                                color: greyColor,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 35.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60.h),
                  GestureDetector(
                    onTap: () {
                      //TODO: Add function here
                      Get.to(() => OTPScreen());
                    },
                    child: CustomButtonWithCenterTitleWidget(
                      title: 'Next',
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: whiteColor,
                          thickness: 1.5,
                          endIndent: 10.w,
                        ),
                      ),
                      quickSandText(
                        text: 'or continue with',
                        fontSize: 16.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                      Expanded(
                        child: Divider(
                          color: whiteColor,
                          thickness: 1.5,
                          indent: 10.w,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: 380.w,
                    height: 60.h,
                    child: SignInButton(
                      Buttons.google,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 380.w,
                    height: 60.h,
                    child: SignInButton(
                      Buttons.facebook,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
