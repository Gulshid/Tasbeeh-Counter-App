/// The `HomeView` class is a Flutter widget that displays a circular container with a counter value and
/// a decorative container below it.
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final provider = Provider.of<TasbcountProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.h,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.r),
                topRight:  Radius.circular(100.r),
                bottomLeft:  Radius.circular(8.r),
                bottomRight: Radius.circular(8.r) ,
                
              ),
              color: Colors.blueGrey,

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 3,
                  
                )
              ]
            ),


            child: Column(
              children: [
                SizedBox(height: 20.h,),
                Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                

            ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -20),
            child: Container(
              height: 150.h,
              width: 150.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightGreenAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 6,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            
              child: Center(
                child: Container(
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
            
                  child: Center(
                    child: Text(
                      provider.counter.toString(),
                      style: GoogleFonts.aDLaMDisplay(
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -60),
            child: Center(
              child: Container(
                height: 120.h,
                width: 110.w,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                    bottomLeft: Radius.circular(100.r),
                    bottomRight: Radius.circular(100.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      spreadRadius: 6,
                      blurRadius: 3,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      ElevatedButton(
                        onPressed: () {
                          provider.set_counter();
                        },

                        style: ElevatedButton.styleFrom(maximumSize: Size(80, 80),
                        backgroundColor: Colors.purple),
                      child:  Container(
                      // height: 50.h,
                      // width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                      ),),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          provider.delete_count();
                        },

                        style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                        ),
                      child: Text('Reset', style: 
                      GoogleFonts.aDLaMDisplay(fontSize: 15.sp),)
                      ),
                    
                  
                  ],
                ),
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(0, -60),
            child: Container(
              height: 150.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight:  Radius.circular(8.r),
                  bottomLeft:  Radius.circular(100.r),
                  bottomRight: Radius.circular(100.r) ,
                  
                ),
                color: Colors.blueGrey,
            
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 6,
                    blurRadius: 3,
                    
                  )
                ]
              ),
            
            
              child: Column(
                children: [
                
                  Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                  Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                  Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                  Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                  Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                  Text('o', style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                  SizedBox(height: 20.h,),
                  
            
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
