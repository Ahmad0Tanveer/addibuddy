import 'dart:async';

import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/OnBoardingScreens/MainOnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;
  void initState() {
    super.initState();
    _showNextWidget();

    Timer(
      Duration(seconds: 5),
      () => Get.offAll(
        () => MainOnboadingScreen(),
        transition: Transition.fade,
      ),
    );
  }

  void _showNextWidget() {
    // Use Future.delayed to schedule showing the next widget after a certain delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _currentIndex++;
      });
      if (_currentIndex < 3) {
        _showNextWidget();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: Stack(
          children: [
            SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40.h),
                  _currentIndex > 1
                      ? Image.asset(
                          ADDI_FrontPage_Logo,
                          height: 100.h,
                        )
                      : SizedBox(),
                  _currentIndex > 2
                      ? Image.asset(
                          ADDI_FrontPage_Claim,
                          height: 30.h,
                        )
                      : SizedBox(),
                  Spacer(),
                  _currentIndex > 0
                      ? Image.asset(ADDI_FrontPage_City)
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
