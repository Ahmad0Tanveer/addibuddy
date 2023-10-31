import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/HistoryScreen/Widgets/HistoryScreenOptionCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatelessWidget {
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
                      text: 'History',
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
                SizedBox(height: 40.h),
                //TODO: Make this a listview.build / Stream for data. I just added this for dummy data.
                HistoryScreenOptionCardWidget(
                  leadingImage: historyScreenLocationIcon,
                  titile: 'Follow my location',
                  subTitle: '24-may-2023 at 4:20',
                ),
                SizedBox(height: 40.h),
                HistoryScreenOptionCardWidget(
                  leadingImage: historyScreenSOSIcon,
                  titile: 'SOS',
                  subTitle: '24-may-2023 at 4:20',
                ),
                SizedBox(height: 40.h),
                HistoryScreenOptionCardWidget(
                  leadingImage: historyScreenSOSIcon,
                  titile: 'Alarm Activated',
                  subTitle: '24-may-2023 at 4:20',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
