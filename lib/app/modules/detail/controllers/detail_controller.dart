import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';
import 'package:opaku/app/data/app_data.dart';
import 'package:opaku/app/data/product.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController
  final favorites = <Product>[].obs;
  final analytics = Get.find<FirebaseAnalytics>();

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

        analytics.logEvent(name: "favorite_item", parameters: {
          "id": product.id,
          "name": product.name,
          "price": product.price
        });
      }
    });
  }

  removeFavorite(Product product) {
    favorites.remove(product);
  }
}
