import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class BackgroundColorSettingScreen extends StatefulWidget {
  @override
  State<BackgroundColorSettingScreen> createState() =>
      _BackgroundColorSettingScreenState();
}

class _BackgroundColorSettingScreenState
    extends State<BackgroundColorSettingScreen> {
  Color primaryColor = Colors.blue;
  Color secondaryColor = Colors.green;
  Color tertiaryColor = Colors.red;
  bool primarySelected = false;
  bool secondaySelected = false;
  bool tertiorySelected = false;

  Color currentSelectedColor = Colors.blue;

  void _onColorChanged(Color color) {
    setState(() {
      currentSelectedColor = color;
      if (primarySelected) {
        primaryColor = color;
      } else if (secondaySelected) {
        secondaryColor = color;
      } else if (tertiorySelected) {
        tertiaryColor = color;
      }
    });
  }

  bool hideIcon = false;
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
                      text: 'Background Color',
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
                SizedBox(height: 60.h),
                quickSandText(
                  text: 'Change background colour',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 30.h),
                ColorPicker(
                  pickerColor: currentSelectedColor,
                  onColorChanged: _onColorChanged,
                  paletteType: PaletteType.hueWheel,
                  enableAlpha: false,
                  hexInputBar: false,
                  showLabel: false,
                ),
                SizedBox(height: 50.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      primarySelected = true;
                      secondaySelected = false;
                      tertiorySelected = false;
                      currentSelectedColor = primaryColor;
                    });
                  },
                  child: ColorChangeOptionWidget(
                    title: 'Primary Colour',
                    primaryColor: primaryColor,
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      primarySelected = false;
                      secondaySelected = true;
                      tertiorySelected = false;
                      currentSelectedColor = secondaryColor;
                    });
                  },
                  child: ColorChangeOptionWidget(
                    title: 'Secondary Colour',
                    primaryColor: secondaryColor,
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      primarySelected = false;
                      secondaySelected = false;
                      tertiorySelected = true;
                      currentSelectedColor = tertiaryColor;
                    });
                  },
                  child: ColorChangeOptionWidget(
                    title: 'Secondary Colour',
                    primaryColor: tertiaryColor,
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 125.w,
                        height: 35.h,
                        decoration: ShapeDecoration(
                          color: Color(0xffE0E0E0),
                          shape: StadiumBorder(),
                          shadows: [
                            BoxShadow(
                              offset: Offset(0, 3),
                              color: lightGreyColor,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Center(
                          child: quickSandText(
                            text: 'Reset',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 125.w,
                          height: 35.h,
                          decoration: ShapeDecoration(
                            color: chalkBlueColor,
                            shape: StadiumBorder(),
                            shadows: [
                              BoxShadow(
                                offset: Offset(0, 3),
                                color: lightGreyColor,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Center(
                            child: quickSandText(
                              text: 'Save',
                              color: whiteColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColorChangeOptionWidget extends StatelessWidget {
  const ColorChangeOptionWidget({
    super.key,
    required this.primaryColor,
    required this.title,
  });

  final Color primaryColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        quickSandText(
          text: '1. Primary colour',
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              width: 320.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: chalkBlueColor),
              ),
              child: Center(
                child: quickSandText(
                  text:
                      '#${primaryColor.value.toRadixString(16).toUpperCase().substring(2)}',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}


// class ColorPickerScreen extends StatefulWidget {
//   @override
//   _ColorPickerScreenState createState() => _ColorPickerScreenState();
// }

// class _ColorPickerScreenState extends State<ColorPickerScreen> {
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Color Picker App'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
            
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   primarySelected = true;
//                   secondaySelected = false;
//                   tertiorySelected = false;
//                   currentSelectedColor = primaryColor;
//                 });
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Text(
//                       'Primary Color',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: primaryColor,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   primarySelected = false;
//                   secondaySelected = true;
//                   tertiorySelected = false;
//                   currentSelectedColor = secondaryColor;
//                 });
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Text(
//                       'Secondary Color',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: secondaryColor,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   primarySelected = false;
//                   secondaySelected = false;
//                   tertiorySelected = true;
//                   currentSelectedColor = tertiaryColor;
//                 });
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Text(
//                       'Tertiary Color',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: tertiaryColor,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
