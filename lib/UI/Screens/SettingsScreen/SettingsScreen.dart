import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:addibuddy/UI/Screens/AccountSettingScreen/AccountSettingScreen.dart';
import 'package:addibuddy/UI/Screens/CustomisationScreen/CustomisationScreen.dart';
import 'package:addibuddy/UI/Screens/FakeCallsScreen/FakeCallsScreen.dart';
import 'package:addibuddy/UI/Screens/SettingsScreen/Widgets/CustomSettingVideoAndAudioRecordingBoolWidget.dart';
import 'package:addibuddy/UI/Screens/SettingsScreen/Widgets/SettingOptionsButtonWidget.dart';
import 'package:addibuddy/UI/Screens/VoiceActivationSettingScreen/VoiceActivationSettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool videoRecordingBool = false;
  bool voiceRecordingBool = false;

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
                      text: 'Settings',
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
                CustomSettingVideoAndAudioRecordingBoolWidget(
                  switchValue: videoRecordingBool,
                  title: 'Video recording',
                  description:
                      'Keep video recording enabled to better protect yourself. '
                      'It allows **addi** to safely store the video of what is '
                      'going on in the surroundings in case the alarm or SOS are triggered',
                  leadingIcon: videoCallIcon,
                ),
                SizedBox(height: 20.h),
                CustomSettingVideoAndAudioRecordingBoolWidget(
                  switchValue: voiceRecordingBool,
                  title: 'Voice recording',
                  description:
                      'Keep voice recording enabled to better protect yourself. '
                      'It allows **addi** to safely store the video of what is going '
                      'on in the surroundings in case the alarm or SOS are triggered.',
                  leadingIcon: audioRecordingIcon,
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => AccountSettingScreen());
                  },
                  child: SettingOptionsButtonWidget(
                    leadingIcon: profileIcon,
                    title: 'Account',
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => VoiceActivationSettingScreen());
                  },
                  child: SettingOptionsButtonWidget(
                    leadingIcon: micIcon,
                    title: 'Voice Activation',
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => FakeCallScreen(isSetting: true));
                  },
                  child: SettingOptionsButtonWidget(
                    leadingIcon: fakeCallIcon,
                    title: 'Fake Call',
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => CustomisationScreen());
                  },
                  child: SettingOptionsButtonWidget(
                    leadingIcon: customizeIcon,
                    title: 'Customisation',
                    isPremium: true,
                  ),
                ),
                SizedBox(height: 40.h),
                GestureDetector(
                  onTap: () {
                    //TODO: Add function
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
          ),
        ),
      ),
    );
  }
}
