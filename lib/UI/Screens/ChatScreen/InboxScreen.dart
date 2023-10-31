import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 40.h, right: 10.w, left: 10.w),
          child: Container(
            width: 1.sw,
            height: 50.h,
            decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: quickSandTextStyle(
                        color: whiteColor,
                        fontSize: 18.sp,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Type you message',
                        hintStyle: quickSandTextStyle(
                          color: whiteColor,
                          fontSize: 15.sp,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    radius: 18.r,
                    child: Image.asset(
                      sendMsgIconWidget,
                      width: 24.w,
                      height: 24.h,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25.sp,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(personDummyImage, width: 33.w, height: 33.h),
                  SizedBox(width: 10.w),
                  quickSandText(
                    text: 'Jason Brown',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
            Divider(color: greyColor),
            SizedBox(height: 10.h),
            //TODO: Replace this with actual Listview.Builder for the real data.
            //This is just a dummy list for the UI.
            DummyChatList(),
          ],
        ),
      ),
    );
  }
}

class DummyChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.8.sh,
      width: 1.sw,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          shrinkWrap: true,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Image.asset(
                    inboxMapImage,
                    width: 220.w,
                    height: 100.h,
                  ),
                  Container(
                    width: 220.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: chalkBlueColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      ),
                    ),
                    child: Center(
                        child: quickSandText(
                      text: 'Current Location',
                      color: whiteColor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    )),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 110.w,
                height: 45.h,
                decoration: BoxDecoration(
                  color: ashGreyColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.r),
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
                child: Center(
                  child: quickSandText(
                    text: 'Hello',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 110.w,
                height: 45.h,
                decoration: BoxDecoration(
                  color: chalkBlueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.r),
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
                child: Center(
                  child: quickSandText(
                    text: 'Hi, Jason',
                    color: whiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
