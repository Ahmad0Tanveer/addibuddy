import 'package:flutter/material.dart';

class MainBottomSheetScreenModel extends ChangeNotifier {
  bool showMap = true;
  bool isFollow = false;

  void showMapFunction(bool val) {
    showMap = val;
    notifyListeners();
  }

  void isFollowOn(bool val) {
    isFollow = val;
    notifyListeners();
  }

  
}
