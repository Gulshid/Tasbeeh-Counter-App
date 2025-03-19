import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tasbeeh_counter/Utils_/Routes/Routes.dart';

import 'package:tasbeeh_counter/Utils_/Routes/Routes_name.dart';
import 'package:tasbeeh_counter/View_Model/TasbCount_Provider.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) =>TasbcountProvider() )],

          child: Builder(
            builder: (BuildContext context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Tasbeeh Counter',
                theme: ThemeData(
                  applyElevationOverlayColor: true,
                  brightness: Brightness.light,
                  appBarTheme: AppBarTheme(color: Colors.blue),
                  primarySwatch: Colors.blue,
                  textTheme: Typography.englishLike2018.apply(
                    fontSizeFactor: 1.sp,
                  ),
                ),
                initialRoute:RoutesName.Splash ,
                onGenerateRoute: Routes.generateRoute,
              );
            },
          ),
        );
      },
    );
  }
}