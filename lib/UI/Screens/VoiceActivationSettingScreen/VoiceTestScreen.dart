import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VoiceTestScreen extends StatefulWidget {
  @override
  State<VoiceTestScreen> createState() => _VoiceTestScreenState();
}

class _VoiceTestScreenState extends State<VoiceTestScreen> {
  late final RecorderController recorderController;
  String? path;

  void initState() {
    super.initState();
    _initialiseController();
  }

  void _initialiseController() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 16000;
  }

  void _startRecording() async {
    await recorderController.record();
    // update state here to, for eample, change the button's state
  }

  void _stopRecording() async {
    await recorderController.stop();

    path = await recorderController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                    text: 'Voice Activation Test',
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
              SizedBox(height: 100.h),
              SizedBox(
                width: 1.sw,
                child: AudioWaveforms(
                  size: Size(1.sw, 50),
                  recorderController: recorderController,
                  waveStyle: WaveStyle(
                    showMiddleLine: false,
                    extendWaveform: true,
                    waveColor: chalkBlueColor,
                  ),
                ),
              ),
              SizedBox(height: 100.h),
              quickSandText(
                text: 'Say the key phrase by holding the mic icon for testing',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 200.h),
              GestureDetector(
                onLongPressEnd: (details) {
                  _stopRecording();
                },
                onLongPress: () {
                  _startRecording();
                },
                child: Image.asset(
                  audioIcon,
                  width: 90.w,
                  height: 90.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
