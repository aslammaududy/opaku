import 'package:get/get.dart';
import 'package:opaku/app/data/app_data.dart';
import 'package:opaku/app/data/product.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController
  final favorites = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void addToFavorite(Product product) {
    AppData.productList.forEach((element) {
      if (element.id == product.id) {
        favorites.add(product);
      }
    });
  }

  removeFavorite(Product product) {
    favorites.remove(product);
  }
}
