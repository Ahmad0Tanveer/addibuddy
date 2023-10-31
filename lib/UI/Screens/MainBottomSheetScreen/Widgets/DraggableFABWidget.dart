import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DraggableFAB extends StatefulWidget {
  @override
  _DraggableFABState createState() => _DraggableFABState();
}

class _DraggableFABState extends State<DraggableFAB> {
  Offset _offset = Offset(10, 800);
  bool dragging = false;
  final double leftBoundary = -30; // Set your left boundary value
  final double rightBoundary = 300; // Set your right boundary value
  final double topBoundary = 250; // Set your top boundary value
  final double bottomBoundary = 800;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Positioned(
          left: _offset.dx.clamp(leftBoundary, rightBoundary),
          top: _offset.dy.clamp(topBoundary, bottomBoundary),
          child: GestureDetector(
            onTap: () {
              //TODO: Add function here.
              print('Pressed');
            },
            child: Draggable(
              child: Image.asset(
                policeAlarmIcon,
                width: 120.w,
                height: 120.h,
              ),
              feedback: SizedBox(),
              onDragStarted: () {
                setState(() {
                  dragging = true;
                });
              },
              onDragEnd: (details) {
                setState(() {
                  dragging = false;
                });
              },
              onDragUpdate: (details) {
                setState(() {
                  _offset += details.delta;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
