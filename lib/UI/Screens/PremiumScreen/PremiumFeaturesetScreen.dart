import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalBackgroundGradientContainerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PremiumFeatureSetScreen extends StatelessWidget {
  final String markdownContent = '''
# 1. No Ads

##### Enjoy **addi** ad-free

# 2. Customisations
#### - Camouflage
##### Change **addi** icon by camouflaging it to hide from curious people looking at your phone.

#### - Message customisations
##### Part of your message can be personalised to make it more fun.

#### - Tap pattern
##### Create your own tap pattern that is more comfortable for you.

#### - Change background colour
##### Change the background colour to your liking to make **addi** more unique to you.

# 3. Support a charity

##### As a premium customer, a percentage of the fee will be donated to a likeminded charity in order to support **addi**’s vision for safer future.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalBackgroundGradientContainerWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            dottedBackIcon,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                      ),
                      Image.asset(
                        premiumFeatureImage,
                        width: 230.w,
                        height: 230.h,
                      ),
                      Image.asset(
                        dottedBackIcon,
                        color: Colors.transparent,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                quickSandText(
                  text: 'Subscribe to premium',
                  fontSize: 22.sp,
                  color: whiteColor,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: MarkdownBody(
                    data: markdownContent,
                    styleSheet: MarkdownStyleSheet(
                      h1: quickSandTextStyle(
                        color: whiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      h4: quickSandTextStyle(
                        color: whiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      h4Padding: EdgeInsets.only(left: 20.w),
                      h5: quickSandTextStyle(
                        color: whiteColor,
                        fontSize: 15.sp,
                      ),
                      h5Padding: EdgeInsets.only(left: 40.w),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  premiumPriceRibbonImage,
                  width: 210.w,
                  height: 120.h,
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    //TODO: add function here
                  },
                  child: Container(
                    width: 255.w,
                    height: 65.h,
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: whiteColor),
                    ),
                    child: Center(
                      child: Markdown(
                        data: '# Try **addi** premium for £ 0.99 for 24 hours!',
                        styleSheet: MarkdownStyleSheet(
                          h1: quickSandTextStyle(
                            color: whiteColor,
                            fontSize: 15,
                          ),
                        ),

                        // color: whiteColor,
                        // fontWeight: FontWeight.w600,
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
