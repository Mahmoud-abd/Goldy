import 'package:flutter/material.dart';
import 'package:flutter_project/core/routing/routers.dart';
import 'package:flutter_project/core/routing/ruotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homescreen,
      onGenerateRoute: AppRouters().generateRoutes,

    );
  }
}

