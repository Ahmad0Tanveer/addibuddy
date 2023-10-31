import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/Strings.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends StatelessWidget {
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
                      text: 'Privacy Policy',
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
                SizedBox(height: 50.h),
                MarkdownBody(
                  data: privacyPolicyText,
                  styleSheet: MarkdownStyleSheet(
                    h1: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    h2: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    h3: TextStyle(
                      fontSize: 16,
                      color: blackColor,
                    ),
                    p: TextStyle(fontSize: 16),
                    strong: TextStyle(fontWeight: FontWeight.bold),
                    em: TextStyle(fontStyle: FontStyle.italic),
                    blockSpacing: 8.0,
                    listBullet: TextStyle(fontSize: 16),
                    listBulletPadding: EdgeInsets.only(left: 16.0),
                    listIndent: 16.0,
                    blockquote: TextStyle(
                        color: Colors.grey[700], fontStyle: FontStyle.italic),
                    code: TextStyle(backgroundColor: Colors.grey[200]),
                    codeblockDecoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4.0),
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
