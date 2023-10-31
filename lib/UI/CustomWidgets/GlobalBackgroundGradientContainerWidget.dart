import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalBackgroundGradientContainerWidget extends StatelessWidget {
  final Widget child;
  GlobalBackgroundGradientContainerWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              purpleColor,
              blueColor,
              lightBlueColor,
              tealColor,
            ],
          ),
        ),
        child: child);
  }
}
