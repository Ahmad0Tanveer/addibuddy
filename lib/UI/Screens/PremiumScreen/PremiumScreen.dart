import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:addibuddy/UI/Screens/PremiumScreen/PremiumFeaturesetScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel mainBottomSheetScreenModel =
        Provider.of<MainBottomSheetScreenModel>(context);
    return GlobalBackgroundGradientContainerWidget(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
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
                      color: whiteColor,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                ),
                Image.asset(
                  ADDI_FrontPage_Logo_with_Claim,
                  width: 110.w,
                  height: 80.h,
                ),
                Divider(
                  color: whiteColor,
                  thickness: 0.7,
                ),
                SizedBox(height: 20.h),
                Image.asset(
                  premiumImage,
                  width: 166.w,
                  height: 166.h,
                ),
                SizedBox(height: 20.h),
                quickSandText(
                  text: 'Unlock premium features',
                  color: whiteColor,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 20.h),
                quickSandText(
                  text: 'Customise addi to make it work better for you. '
                      'We offer a range of exciting and fun features from '
                      'allowing you to change your background colour or adding '
                      'to your message. You can also create your own tap pattern '
                      'if you wish to do so or camouflage your addi app on your '
                      'phone screen to hide it from curious eyes. Try premium for '
                      '24 hours for only £ 0.99.',
                  color: whiteColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 340.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                    color: chalkBlueColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: blackColor.withOpacity(0.50),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: quickSandText(
                      text: 'Unlock For 24 Hours (£ 0.99)',
                      color: whiteColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                GestureDetector(
                  onTap: () {
                    Get.to(() => PremiumFeatureSetScreen());
                  },
                  child: Container(
                    width: 340.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: quickSandText(
                        text: 'Get Premium Subscription',
                        fontSize: 18.sp,
                      ),
                    ),
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
