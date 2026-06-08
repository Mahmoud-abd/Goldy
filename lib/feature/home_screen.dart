

import 'package:flutter/material.dart';

import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_streings.dart';
import 'package:goldy/core/routing/ruotes.dart';
import 'package:goldy/core/widgets/costem_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(text:AppStrings.gold , onPressed: () {
            Navigator.pushNamed(context, AppRoutes.golgscreen);
          }, color: AppColors.goldColor),
          SizedBox(height: 20,),
          CustomButton(text:AppStrings.silver , onPressed: () {
            Navigator.pushNamed(context, AppRoutes.silverscreen);
          }, color: AppColors.sliverColor)
        ],
      ),
    );
  }
}
