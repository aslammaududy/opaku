import 'package:opaku/app/data/product.dart';

class AppData {
  static List<Product> productList = [
    Product(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        image: 'assets/shooe_tilt_1.png'),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 220.00,
        image: 'assets/shoe_tilt_2.png'),
  ];
  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];

}
