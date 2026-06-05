


import 'package:flutter/material.dart';
import 'package:flutter_project/core/routing/ruotes.dart';

import '../../feature/home_screen.dart';

class AppRouters {
   Route generateRoutes (RouteSettings settings){
    switch (settings.name){
      case AppRoutes.homescreen:
      return MaterialPageRoute(
          builder: (context){
            return HomeScreen();
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