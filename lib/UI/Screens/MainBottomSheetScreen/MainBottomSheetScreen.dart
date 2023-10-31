import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/UI/CustomWidgets/CustomAppBarWidget.dart';
import 'package:addibuddy/UI/Screens/ChatScreen/ChatScreen.dart';
import 'package:addibuddy/UI/Screens/FakeCallsScreen/FakeCallsScreen.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/DrawerScreens/MainLeftDrawer.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/DrawerScreens/MainRightDrawer.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/Widgets/DraggableFABWidget.dart';
import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/Widgets/FollowMeOpenCardWidget.dart';
import 'package:addibuddy/UI/Screens/PremiumScreen/PremiumScreen.dart';
import 'package:addibuddy/UI/Screens/ShareLocationScreen/ShareLocationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MainBottomSheetScreen extends StatefulWidget {
  @override
  State<MainBottomSheetScreen> createState() => _MainBottomSheetScreenState();
}

class _MainBottomSheetScreenState extends State<MainBottomSheetScreen> {
  int _selectedIndex = 0;

  List<Widget> bottomNavScreens = [
    // FollowMeScreen(),
    ShareLocationScreen(),
    FakeCallScreen(isSetting: false),
    ChatScreen(),
    PremiumScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    MainBottomSheetScreenModel mainBottomSheetScreenModel =
        Provider.of<MainBottomSheetScreenModel>(context);
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      drawer: MainLeftDrawer(),
      endDrawer: MainRightDrawer(),
      extendBodyBehindAppBar: true,
      appBar: mainBottomSheetScreenModel.showMap ? CustomAppBar() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton:
          mainBottomSheetScreenModel.showMap ? DraggableFAB() : null,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: mainBottomSheetScreenModel.isFollow,
            child: FollowMeOpenCardWidget(),
          ),
          SizedBox(
            height: 125.h,
            child: BottomNavigationBar(
              backgroundColor: chalkBlueColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: (val) {
                setState(() {});
                _selectedIndex = val;
                mainBottomSheetScreenModel.showMapFunction(false);
              },
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.asset(
                      mainBottomSheetScreenModel.showMap
                          ? bottomNavInActiveLocationIcon
                          : _selectedIndex == 0
                              ? bottomNavActiveLocationIcon
                              : bottomNavInActiveLocationIcon,
                      width: 30.w,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.asset(
                      mainBottomSheetScreenModel.showMap
                          ? bottomNavInActiveFakeCallIcon
                          : _selectedIndex == 1
                              ? bottomNavActiveFakeCallIcon
                              : bottomNavInActiveFakeCallIcon,
                      width: 30.w,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.asset(
                      mainBottomSheetScreenModel.showMap
                          ? bottomNavInActiveChatIcon
                          : _selectedIndex == 2
                              ? bottomNavActiveChatIcon
                              : bottomNavInActiveChatIcon,
                      width: 30.w,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.asset(
                      mainBottomSheetScreenModel.showMap
                          ? bottomNavInActivePremiumIcon
                          : _selectedIndex == 3
                              ? bottomNavActivePremiumIcon
                              : bottomNavInActivePremiumIcon,
                      width: 30.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: mainBottomSheetScreenModel.showMap
          ? Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  mapImage,
                  fit: BoxFit.fill,
                ),
                Visibility(
                  visible: !mainBottomSheetScreenModel.isFollow,
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            muteIcon,
                            width: 74.w,
                            height: 74.h,
                          ),
                          SizedBox(height: 40.h),
                          Image.asset(
                            audioIcon,
                            width: 74.w,
                            height: 74.h,
                          ),
                          SizedBox(height: 200.h),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          : bottomNavScreens[_selectedIndex],
    );
  }
}
