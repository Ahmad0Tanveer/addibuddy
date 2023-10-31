import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomSettingVideoAndAudioRecordingBoolWidget extends StatefulWidget {
  bool switchValue;
  final String title;
  final String description;
  final String leadingIcon;

  CustomSettingVideoAndAudioRecordingBoolWidget({
    required this.leadingIcon,
    required this.description,
    required this.switchValue,
    required this.title,
  });

  @override
  State<CustomSettingVideoAndAudioRecordingBoolWidget> createState() =>
      Setting_VideoRecordingBoolWidgetState();
}

class Setting_VideoRecordingBoolWidgetState
    extends State<CustomSettingVideoAndAudioRecordingBoolWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.leadingIcon,
                  width: 27.w,
                  height: 27.h,
                ),
                SizedBox(width: 12.w),
                quickSandText(
                  text: widget.title,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                activeColor: chalkBlueColor,
                value: widget.switchValue,
                onChanged: (val) {
                  setState(() {
                    widget.switchValue = val;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        MarkdownBody(
          data: widget.description,
          styleSheet: MarkdownStyleSheet(
            p: quickSandTextStyle(
              fontWeight: FontWeight.w500,
              color: greyColor,
              fontSize: 14.sp,
            ),
            strong: quickSandTextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Divider(color: greyColor),
      ],
    );
  }
}
