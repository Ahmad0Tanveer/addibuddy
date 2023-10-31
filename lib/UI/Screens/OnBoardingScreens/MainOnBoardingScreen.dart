import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/Strings.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/AuthScreens/SignInScreen/SignInScreen.dart';
import 'package:addibuddy/UI/Screens/OnBoardingScreens/Widgets/OnBoardingPageWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MainOnboadingScreen extends StatefulWidget {
  @override
  State<MainOnboadingScreen> createState() => _MainOnboadingScreenState();
}

class _MainOnboadingScreenState extends State<MainOnboadingScreen> {
  void _onIntroEnd(context) {
    Get.to(
      SignInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        allowImplicitScrolling: true,
        dotsFlex: 2,
        rawPages: List.generate(7, (index) {
          return Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: OnBoardingPagesCardWidget(
              topImage: listOfOnboardingImages[index],
              title: listOfTitles[index],
              bottomImage: listOfOnboardingImagesBottom[index],
              centerWidget: onBoardingCenterTextWidgetList[index],
            ),
          );
        }),
        controlsPadding: EdgeInsets.only(bottom: 70.h),
        overrideNext: GestureDetector(
          onTap: () {
            _onIntroEnd(context);
          },
          child: quickSandText(
            text: 'Skip',
            fontSize: 19.sp,
            color: lightBlueColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        overrideDone: GestureDetector(
          onTap: () {
            _onIntroEnd(context);
          },
          child: quickSandText(
            text: 'Next',
            fontSize: 19.sp,
            color: lightBlueColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
