import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingOptionsButtonWidget extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final bool? isPremium;
  SettingOptionsButtonWidget({
    required this.title,
    required this.leadingIcon,
    this.isPremium,
  });

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
                  leadingIcon,
                  width: 34.w,
                  height: 34.h,
                ),
                SizedBox(width: 15.w),
                quickSandText(
                  text: title,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Row(
              children: [
                isPremium != null
                    ? Image.asset(
                        premiumCrownIcon,
                        width: 34.w,
                        height: 34.h,
                      )
                    : SizedBox(),
                SizedBox(width: 10.w),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Divider(color: greyColor),
      ],
    );
  }
}
