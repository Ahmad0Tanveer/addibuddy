import 'package:addibuddy/Core/Providers/Providers.dart';
import 'package:addibuddy/LoadingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providerList,
      child: AddiBuddy(),
    ),
  );
}

class AddiBuddy extends StatelessWidget {
  static const double _designWidth = 430;
  static const double _designHeight = 932;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(_designWidth, _designHeight),
      builder: (context, widget) => GetMaterialApp(
        defaultTransition: Transition.fadeIn,
        debugShowCheckedModeBanner: false,
        home: LoadingScreen(),
      ),
    );
  }
}
