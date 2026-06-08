import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/app_constants.dart';
import 'package:goldy/core/networking/dio_halper.dart';
import 'package:goldy/feature/silver_screen/data/model_silver.dart';

class SilverRepo{

  Future<Either<String,SilverPrice>> getRepo()async{
    try {
      final respo = await DioHalper.getData(endPoint: AppConstants.silverurl);
      return right(SilverPrice.fromJson(respo.data));
    }
    catch (e){
      return left(e.toString());
    }
  }
}