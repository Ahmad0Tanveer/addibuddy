import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberTextFieldWidget extends StatelessWidget {
  final TextEditingController numberController;

  NumberTextFieldWidget({
    required this.numberController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        quickSandText(
          text: 'Type your mobile number',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: whiteColor,
        ),
        SizedBox(height: 10.h),
        Container(
          width: 381.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(14.r),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.25),
                offset: Offset(0, 4),
                blurRadius: 24,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            children: [
              CountryCodePicker(
                onChanged: print,
                textStyle: quickSandTextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  color: greyColor.withOpacity(0.6),
                ),
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'USA',
                favorite: ['+39', 'FR'],
                // optional. Shows only country name and flag
                showCountryOnly: false,
                // optional. Shows only country name and flag when popup is closed.
                showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
                flagDecoration: BoxDecoration(shape: BoxShape.circle),
                flagWidth: 40,
                padding: EdgeInsets.zero,
              ),
              VerticalDivider(
                thickness: 2,
                indent: 15.h,
                endIndent: 15.h,
                color: greyColor.withOpacity(0.6),
              ),
              Expanded(
                child: TextField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: InputBorder.none),
                  style: quickSandTextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w600,
                    color: greyColor.withOpacity(0.6),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
