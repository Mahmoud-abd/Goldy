import 'package:flutter/material.dart';
import 'package:goldy/core/networking/dio_halper.dart';
import 'package:goldy/core/routing/routers.dart';
import 'package:goldy/core/routing/ruotes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHalper.int();
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

