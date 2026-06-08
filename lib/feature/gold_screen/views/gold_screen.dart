import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_images.dart';
import 'package:goldy/feature/gold_screen/data/gold_repo.dart';
import 'package:goldy/feature/gold_screen/views/cubit/gold_cubit.dart';
import 'package:goldy/feature/gold_screen/views/cubit/gold_state.dart';
import 'package:goldy/feature/gold_screen/widgets/text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GoldCubit(GoldRepo())..getGold();
      },
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black45,
            title: Text(textAlign: TextAlign.center,

              'Gold',
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.goldColor),

            ),
          ),
          body: BlocBuilder<GoldCubit, GoldStaet>(
            builder: (context, state) {
              if(state is GoldLodeingState){
                return Center(child: CircularProgressIndicator());
              }
              else if (state is GoldErorrState){
                return Center(child: Text(state.erorrmag,style: TextStyle(color: AppColors.goldColor),));
              }

              else if (state is GoldSuccedState)
              {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 350,
                        width: 350,
                        child:Image.asset(AppImages.imageGold)),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextGold(text: state.goldPrice.price.toString(),
                          color: AppColors.goldColor,),
                        SizedBox(width: 20,),
                        TextGold(text: 'USD', color: AppColors.goldColor)
                      ],
                    )
                  ],
                );
              }

              return const SizedBox();
            },
          )
      ),
    );
  }
}
