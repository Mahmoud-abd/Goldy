
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/feature/silver_screen/data/silver_repo.dart';
import 'package:goldy/feature/silver_screen/views/cubit/silver_state.dart';

class SilverCubit extends Cubit<SilverState>{
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());
  Future <void>getSilver()async{
    emit(SilverLodeingState());
    final res = await silverRepo.getRepo();

    res.fold((erorr){
      emit(SilvrtErorrState(erorrmag: erorr));
    }, (silverPrice){
      emit(SilverSuccedState(silverPrice: silverPrice));
    });
  }

}