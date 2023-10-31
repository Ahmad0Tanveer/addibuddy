import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomTextFieldWithTitleWidget.dart';
import 'package:addibuddy/UI/CustomWidgets/GlobalGradientButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

TextEditingController titleController = TextEditingController();

class MessageCustomisationScreen extends StatelessWidget {
  void _messageEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController _textFieldController = TextEditingController();

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text('Edit Message'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: 'Enter text here'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                String enteredText = _textFieldController.text;
                // You can use enteredText as needed
                print('Entered Text: $enteredText');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
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
                        text: 'Message Customisation',
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
                ),
                SizedBox(height: 70.h),
                quickSandText(
                  text: 'Customise your message',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomMessageWidget(
                      title: 'Title',
                      controller: titleController,
                      hintText: 'Jason Brown',
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add edit function.
                        _messageEditDialog(context);
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomMessageWidget(
                      height: 80.h,
                      borderRadius: 16.r,
                      title: 'Message',
                      controller: titleController,
                      hintText:
                          ' Hey, it\'s ........., could you be my addibuddy?',
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add edit function.
                        _messageEditDialog(context);
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomMessageWidget(
                      title: 'Title',
                      controller: titleController,
                      hintText: 'Help Me!',
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add edit function.
                        _messageEditDialog(context);
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomMessageWidget(
                      height: 80.h,
                      borderRadius: 16.r,
                      title: 'Message',
                      controller: titleController,
                      hintText:
                          '"Jason Brown" is in trouble and needs your help',
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add edit function.
                        _messageEditDialog(context);
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomMessageWidget(
                      title: 'Title',
                      controller: titleController,
                      hintText: 'Jason Brown',
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add edit function.
                        _messageEditDialog(context);
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomMessageWidget(
                      height: 80.h,
                      borderRadius: 16.r,
                      title: 'Message',
                      controller: titleController,
                      hintText: 'Thanks, I’ve arrived safely.',
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: GlobalGradientButtonWidget(
                    width: 186.w,
                    centerTitle: 'Save Changes',
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
