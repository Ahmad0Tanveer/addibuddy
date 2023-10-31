import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/Screens/ChatScreen/InboxScreen.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel mainBottomSheetScreenModel =
        Provider.of<MainBottomSheetScreenModel>(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  mainBottomSheetScreenModel.showMapFunction(true);
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    dottedBackIcon,
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
              ),
              quickSandText(
                text: 'Inbox',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 40.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => InboxScreen());
                      },
                      child: ChatCardWidget(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              personDummyImage,
              width: 46.w,
              height: 46.h,
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                quickSandText(
                  text: 'Jason Brown',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: blackColor,
                ),
                SizedBox(height: 5.h),
                quickSandText(
                  text: 'You can start a coversation',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: greyColor,
                ),
              ],
            ),
            Spacer(),
            quickSandText(
              text: '2h ago',
            ),
          ],
        ),
        Divider(
          color: greyColor,
        )
      ],
    );
  }
}
