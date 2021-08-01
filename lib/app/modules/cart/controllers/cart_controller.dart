import 'package:get/get.dart';
import 'package:opaku/app/data/product.dart';

class CartController extends GetxController {
  //TODO: Implement CartController

  final cartList = <Product>[].obs;
  final productCount = <int, int>{}.obs;
  final productPrice = <int, double>{}.obs;

  var total = 0.0.obs;

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

    Get.snackbar("Success!", "Success add item to cart");
  }

  void _countProduct(Product product) {
    productCount[product.id!] =
        cartList.where((p) => p.id == product.id).length;

    _getPrice(product);
  }

  void _getPrice(Product product) {
    cartList.forEach((element) {
      productPrice[product.id!] = (element.id == product.id
          ? product.price! * productCount[product.id]!
          : 0.0);
    });

    _getTotal();
  }

  void _getTotal() {
    total.value = productPrice.values.fold(0.0, (previousValue, element) {
      print(previousValue);
      print(element);
      return previousValue + element;
    });
  }
}
