


import 'package:flutter/material.dart';
import 'package:goldy/core/routing/ruotes.dart';
import 'package:goldy/feature/gold_screen/views/gold_screen.dart';
import 'package:goldy/feature/silver_screen/views/silver_screen.dart';
import '../../feature/home_screen.dart';

class AppRouters {
   Route generateRoutes (RouteSettings settings){
    switch (settings.name){
      case AppRoutes.homescreen:
      return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          }
      );
      case AppRoutes.golgscreen:
      return MaterialPageRoute(
    builder: (context) {
      return GoldScreen();
    }
    );
      case AppRoutes.silverscreen:
        return MaterialPageRoute(
            builder: (context) {
              return SilverScreen();
            }
        );
      default :
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("No route defined for (settings.name)"),
            ),
          );
        }
        );

    }
  }
}