import 'package:goldy/feature/gold_screen/data/modle_gold.dart';

abstract class GoldStaet {}

class GoldInitialState  extends GoldStaet{}
class GoldSuccedState  extends GoldStaet{
  final GoldPrice goldPrice;

  GoldSuccedState({required this.goldPrice});
}
class GoldLodeingState  extends GoldStaet{}
class GoldErorrState  extends GoldStaet{
  final String erorrmag;

  GoldErorrState({required this.erorrmag});
}