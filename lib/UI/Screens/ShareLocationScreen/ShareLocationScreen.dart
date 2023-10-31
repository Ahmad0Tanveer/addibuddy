import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

class ShareLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel mainBottomSheetScreenModel =
        Provider.of<MainBottomSheetScreenModel>(context);
    return WillPopScope(
      onWillPop: () async {
        mainBottomSheetScreenModel.showMapFunction(true);
        return false;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SafeArea(
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
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                ),
                LocationShareScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LocationShareScreen extends StatelessWidget {
  final String locationDetails =
      'What3words Location: ///your.location.details';

  void _shareLocation(BuildContext context) {
    Share.share(locationDetails); // Share the location details
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Location Details',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            locationDetails,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Implement copying functionality
                  Clipboard.setData(ClipboardData(text: locationDetails));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Location copied to clipboard'),
                    ),
                  );
                },
                child: Text('Copy'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  _shareLocation(context); // Share location details
                },
                child: Text('Share'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
