import 'package:get/get.dart';
import 'package:opaku/app/data/product.dart';

class CartController extends GetxController {
  //TODO: Implement CartController

  final cartList = <Product>[].obs;
  final productCount = <int, int>{}.obs;

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

  void add(Product product) {
    cartList.add(product);

    _countProduct(product);
  }

  void _countProduct(Product product) {
    print(product.id);
    cartList.forEach((element) {
      if (!productCount.containsKey(element.id)) {
        productCount[element.id ?? 0] = 1;
      } else {
        productCount[element.id ?? 0] = productCount[element.id ?? 0]! + 1;
      }
    });
  }
}
