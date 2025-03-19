import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150.h,
            width: 150.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),

          Transform.translate(
            offset: Offset(0, -40),
            child: Container(
              height: 150.h,
              width: 150.w,
              decoration: BoxDecoration(
                color:Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r))
              ),
            ),
          )
        ],
      ),
    );
  }
}