import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class FakeCallScreen extends StatefulWidget {
  final bool isSetting;
  FakeCallScreen({required this.isSetting});

  @override
  State<FakeCallScreen> createState() => _FakeCallScreenState();
}

class _FakeCallScreenState extends State<FakeCallScreen> {
  TextEditingController callerNameController = TextEditingController();
  bool fakeCallBool = false;
  String duration = '';
  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel mainBottomSheetScreenModel =
        Provider.of<MainBottomSheetScreenModel>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        mainBottomSheetScreenModel.showMapFunction(true);
                        Get.back();
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
                    Image.asset(
                      premiumIcon,
                      width: 33.w,
                      height: 33.h,
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  fakeCallsImage,
                  width: 160.w,
                  height: 130.h,
                ),
                SizedBox(height: 30.h),
                quickSandText(
                  text: 'Fake Call',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 30.h),
                quickSandText(
                  text: 'Set Time Period',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 20.h),
                CupertinoTimerPicker(
                  initialTimerDuration: Duration(minutes: 1),
                  mode: CupertinoTimerPickerMode.hm,
                  onTimerDurationChanged: (value) {
                    setState(() {
                      duration = value.toString();
                    });
                  },
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      quickSandText(
                        text: 'Turn ${fakeCallBool ? 'Off' : 'On'} Fake Call',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: chalkBlueColor,
                          value: fakeCallBool,
                          onChanged: (val) {
                            setState(() {
                              fakeCallBool = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                TextField(
                  enabled: widget.isSetting ? true : false,
                  controller: callerNameController,
                  decoration: InputDecoration(
                    hintText: 'Jason Brown',
                    hintStyle: quickSandTextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                GestureDetector(
                  onTap: () {
                    mainBottomSheetScreenModel.showMapFunction(true);
                    Get.back();
                  },
                  child: GlobalGradientButtonWidget(centerTitle: 'Done'),
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
