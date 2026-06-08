import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/feature/silver_screen/data/silver_repo.dart';
import 'package:goldy/feature/silver_screen/views/cubit/silver_cubit.dart';
import 'package:goldy/feature/silver_screen/views/cubit/silver_state.dart';
import 'package:goldy/feature/silver_screen/widgets/text.dart';

import '../../../core/constants/app_images.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SilverCubit(SilverRepo())
          ..getSilver();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text('SILVER',
            style: TextStyle(color: AppColors.sliverColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverLodeingState){
              return Center(child: CircularProgressIndicator());
            }
            else if(state is SilvrtErorrState){
              return Center(child: Text(state.erorrmag,style: TextStyle(color: AppColors.sliverColor),));
            }else if(state is SilverSuccedState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 350,
                      width: 350,
                      child: Image.asset(AppImages.imageGold)),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextSilver(text: '4000',
                        color: AppColors.sliverColor,),
                      SizedBox(width: 20,),
                      TextSilver(text: 'USD', color: AppColors.sliverColor)
                    ],
                  )
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
