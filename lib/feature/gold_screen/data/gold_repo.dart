import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/app_constants.dart';
import 'package:goldy/core/networking/dio_halper.dart';
import 'package:goldy/feature/gold_screen/data/modle_gold.dart';

class GoldRepo{

   Future<Either<String,GoldPrice>> getRepo()async{
     try {
       final respo = await DioHalper.getData(endPoint: AppConstants.goldurl);
       return right(GoldPrice.fromJson(respo.data));
     }
     catch (e){
       return left(e.toString());
     }
  }
}