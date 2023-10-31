import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FollowMeScreen extends StatelessWidget {
  final TextEditingController locationFromController = TextEditingController();
  final TextEditingController locationToController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel mainBottomSheetScreenModel =
        Provider.of<MainBottomSheetScreenModel>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // GestureDetector(
              //   onTap: () {
              //     mainBottomSheetScreenModel.showMapFunction(true);
              //   },
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Image.asset(
              //       dottedBackIcon,
              //       width: 20.w,
              //       height: 20.h,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20.h),
              Image.asset(
                followMeImage,
                width: 160.w,
                height: 130.h,
              ),
              SizedBox(height: 30.h),
              quickSandText(
                text: 'Follow Me',
                color: whiteColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  quickSandText(
                    text: 'From',
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    width: 372.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: lightGreyColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: TextField(
                        controller: locationFromController,
                        style: quickSandTextStyle(color: whiteColor),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              bottom: 10.h, left: 10.w, right: 10.w),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  quickSandText(
                    text: 'To',
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    width: 372.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: lightGreyColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: TextField(
                        style: quickSandTextStyle(color: whiteColor),
                        controller: locationToController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              bottom: 10.h, left: 10.w, right: 10.w),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  quickSandText(
                    text: 'Estimated Arrival Time',
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 10.h),
                  quickSandText(
                    text: '00:00',
                    fontSize: 24.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Divider(
                thickness: 1,
                color: lightGreyColor,
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  quickSandText(
                    text: 'addibuddy',
                    fontSize: 18.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 30.h),
                  SizedBox(
                    child: SelectableList(),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 125.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: whiteColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: whiteColor,
                            size: 30.sp,
                          ),
                          SizedBox(width: 5.w),
                          quickSandText(
                            text: 'add buddy',
                            color: whiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      //TODO: ADD function here
                      // mainBottomSheetScreenModel.showMapFunction(true);
                      mainBottomSheetScreenModel.isFollowOn(true);
                    },
                    child: GlobalGradientButtonWidget(
                      centerTitle: 'Start Journey',
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectableList extends StatefulWidget {
  @override
  _SelectableListState createState() => _SelectableListState();
}

class _SelectableListState extends State<SelectableList> {
  // List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  int selectedItemIndex = -1; // No item selected initially

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedItemIndex = index;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Container(
              width: 430.w,
              color: selectedItemIndex == index
                  ? Color(0xff476DBF).withOpacity(0.35) // Selected color
                  : Colors.white, // Unselected color
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        personDummyImage, // Replace with your image asset path
                        width: 46.w,
                        height: 46.h,
                      ),
                      SizedBox(width: 20.w),
                      quickSandText(
                        text: 'Blake French', // Replace with your text
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: lightGreyColor.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
