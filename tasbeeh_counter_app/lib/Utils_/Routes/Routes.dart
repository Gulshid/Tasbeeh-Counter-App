import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tasbeeh_counter_app/Utils_/Routes/Routes_name.dart';
import 'package:tasbeeh_counter_app/view_/Splash_view.dart';
import 'package:tasbeeh_counter_app/view_/home_view.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings tasbeeh) {
    switch (tasbeeh.name) {
      case RoutesName.Splash:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => SplashView(),
          );
        }

      case RoutesName.home:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => HomeView(),
          );
        }

      default:
        {
          return MaterialPageRoute(
            builder:
                (_) => Scaffold(
                  body: Center(child: Text('NO Route Available here----->')),
                ),
          );
        }
    }
  }
}
