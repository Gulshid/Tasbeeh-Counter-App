/// The `HomeView` class is a Flutter widget that displays a circular container with a counter value and
/// a decorative container below it.
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tasbeeh_counter_app/View_Model/TasbCount_Provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<TasbcountProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100.r),
                    topLeft: Radius.circular(100.r),

                    bottomLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),),
                color: Colors.blueGrey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.6),
                    offset: Offset(0, 5),
                    spreadRadius: 3,
                    blurRadius: 5,
                  )
                ]
              ),

              child: Column(
                children: [
                    Text('o',style: TextStyle(color: Colors.white, fontSize: 20.sp),),
                    Text('o',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                    Text('o',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                    Text('o',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                    SizedBox(height: 20.h,),
                ],
              ),
            
            ),
          ),
          Transform.translate(
            offset: Offset(0, -20),
            child: Center(
              child: Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      offset: Offset(0, 5),
                      spreadRadius: 5,
                      blurRadius: 3,
                    ),
                  ],
                ),
            
                child: Center(
                  child: Container(
                    height: 25.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.white,
                    ),
            
                    child: Center(
                      child: Text(
                        pro.counter.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(0, -55),
            child: Container(
              height: 120.h,
              width: 110.w,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.r),
                  bottomRight: Radius.circular(100.r),
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.white.withOpacity(0.6),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),

              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      pro.set_counter();
                    },
                    style: ElevatedButton.styleFrom(maximumSize: Size(80, 80)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),

                  SizedBox(height: 8.h),
                  ElevatedButton(
                    onPressed: () {
                      context.read<TasbcountProvider>().delete_count();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),

                    child: Text('Reset'),
                  ),
                ],
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(0, -63),
            child: Center(
              child: Container(
                height: 120.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.r),
                    topLeft: Radius.circular(8.r),

                    bottomLeft: Radius.circular(100.r),
                    bottomRight: Radius.circular(100.r),
                  ),
                  
                  color: Colors.blueGrey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      offset: Offset(0, 5),
                      spreadRadius: 3,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Text('o',style: TextStyle(color: Colors.white, fontSize: 20.sp),),
                    Text('o',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                    Text('o',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                    Text('o',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                  ],
                ),
              
              ),
                       ),
           ),
        ],
      ),
    );
  }
}
