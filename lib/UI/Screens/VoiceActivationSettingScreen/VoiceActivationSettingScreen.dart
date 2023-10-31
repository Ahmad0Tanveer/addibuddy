import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:addibuddy/UI/Screens/VoiceActivationSettingScreen/VoiceTestScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

TextEditingController phraseController = TextEditingController();

class VoiceActivationSettingScreen extends StatefulWidget {
  @override
  State<VoiceActivationSettingScreen> createState() =>
      _VoiceActivationSettingScreenState();
}

class _VoiceActivationSettingScreenState
    extends State<VoiceActivationSettingScreen> {
  bool isVoiceActivationEnabled = false;

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
                      text: 'Voice Activation',
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
                SizedBox(height: 60.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    quickSandText(
                      text: 'Alarm key phrase',
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      width: 323.w,
                      child: quickSandText(
                        text:
                            'Please select a phrase that will be used for voice alarm activation.',
                      ),
                    ),
                    SizedBox(
                      width: 323.w,
                      child: quickSandText(
                        text: 'For example: black rat, blue hat, long rain.',
                      ),
                    ),
                    TextField(controller: phraseController),
                    SizedBox(height: 20.h),
                    GlobalGradientButtonWidget(centerTitle: 'Record sound'),
                  ],
                ),
                SizedBox(height: 50.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    quickSandText(
                      text: 'Alarm key phrase',
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10.h),
                    quickSandText(text: 'Test Successful'),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => VoiceTestScreen());
                      },
                      child:
                          GlobalGradientButtonWidget(centerTitle: 'Test Again'),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    quickSandText(
                      text: 'Enable/Disable Services',
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 377.w,
                      child: quickSandText(
                        text:
                            'You can enable or disable alarm voice activation services by tapping on the icon here or on home screen.',
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        isVoiceActivationEnabled = !isVoiceActivationEnabled;
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          isVoiceActivationEnabled
                              ? audioIcon
                              : audioIconDisabled,
                          width: 70.w,
                          height: 70.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: GlobalGradientButtonWidget(
                    width: 186.w,
                    titleFontSize: 15.sp,
                    centerTitle: 'Save Changes',
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
