import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreenOptionCardWidget extends StatelessWidget {
  final String leadingImage;
  final String titile;
  final String subTitle;
  HistoryScreenOptionCardWidget({
    required this.leadingImage,
    required this.subTitle,
    required this.titile,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          leadingImage,
          width: 46.w,
          height: 46.h,
        ),
        SizedBox(width: 30.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            quickSandText(
              text: titile,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
            quickSandText(
              text: subTitle,
              fontWeight: FontWeight.w500,
              color: lightGreyColor,
            ),
          ],
        )
      ],
    );
  }
}
