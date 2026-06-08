import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/feature/gold_screen/data/gold_repo.dart';
//import 'package:goldy/feature/gold_screen/data/modle_gold.dart';
import 'package:goldy/feature/gold_screen/views/cubit/gold_state.dart';
//import 'package:flutter/material.dart';
class GoldCubit extends Cubit<GoldStaet>{
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());
 Future <void>getGold()async{
   emit(GoldLodeingState());
   final res = await goldRepo.getRepo();

   res.fold((erorr){
     emit(GoldErorrState(erorrmag: erorr));
   }, (goldPrice){
     emit(GoldSuccedState(goldPrice: goldPrice));
   });
 }

}