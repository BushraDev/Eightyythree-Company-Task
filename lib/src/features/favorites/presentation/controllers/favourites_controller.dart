import 'package:eightyythree_company_task/src/features/grocery/data/models/deal.dart';
import 'package:get/get.dart';

class FavouritesController extends GetxController{
  Map<int?, Deal?>? _favouritesList = {};
  List<Deal?>? get favouritesList => _favouritesList!.values.toList();

  void addDealToFavourites(Deal? deal){
    if(!_favouritesList!.containsKey(deal!.id))
    {
      _favouritesList!.putIfAbsent(deal.id, () => deal);
    }else{
      _favouritesList!.remove(deal.id);
    }
    update();
  }
}