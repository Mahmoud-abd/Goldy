
import 'package:goldy/feature/silver_screen/data/model_silver.dart';

abstract class SilverState {}

class SilverInitialState  extends SilverState{}
class SilverSuccedState  extends SilverState{
  final SilverPrice silverPrice;

  SilverSuccedState({required this.silverPrice});


}
class SilverLodeingState  extends SilverState{}
class SilvrtErorrState  extends SilverState{
  final String erorrmag;

  SilvrtErorrState({required this.erorrmag});


}