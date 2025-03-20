import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbeeh_counter_app/View_Model/TasbCount_Provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<TasbcountProvider>(
        context,
        listen: false,
      ).set_SplashLoad(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Splash App Image in top center
          ClipRRect(
            child: Image.asset(
              'assets/tasbeeh.png',
              height: 120.h,
              width: 120.w,
              fit: BoxFit.fill,
            ),
          ),

          Center(
            child: Text(
              'Tasbeeh Counter App',
              style: GoogleFonts.agbalumo(color: Colors.white, fontSize: 30.sp),
            ),
          ),

          SpinKitChasingDots(color: Colors.green, size: 50.sp),
        ],
      ),
    );
  }
}
