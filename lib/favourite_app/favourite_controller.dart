import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> colors = ['pink', 'blue', 'orange', 'green', 'yellow'].obs;
  RxList favouritecolors = [].obs;

  addtofavourite(String value) {
    favouritecolors.add(value);
  }
  
  removefromfavourite(String value) {
    favouritecolors.remove(value);
  }
}
