import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tasbeeh_counter_app/Services_/HIve_database.dart';
import 'package:tasbeeh_counter_app/Utils_/Routes/Routes.dart';
import 'package:tasbeeh_counter_app/Utils_/Routes/Routes_name.dart';
import 'package:tasbeeh_counter_app/View_Model/TasbCount_Provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDatabase.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: getdesignSize(context),
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


Size getdesignSize(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 600) {
    return Size(360, 690);
  } else if (width < 1200) {
    return Size(834, 1194);
  } else {
    return Size(1440, 1024);
  }
}