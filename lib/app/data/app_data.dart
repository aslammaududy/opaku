import 'package:opaku/app/data/payment.dart';
import 'package:opaku/app/data/product.dart';
import 'package:opaku/app/data/shipping.dart';

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
  static List<Payment> paymentList = [
    Payment(id: 1, name: "Bank BCA", image: 'assets/logo-bca.png'),
    Payment(id: 2, name: "Bank BRI", image: 'assets/logo-bri.png'),
    Payment(id: 3, name: "Bank BNI", image: 'assets/logo-bni.png'),
    Payment(id: 4, name: "Bank Mandiri", image: 'assets/logo-mandiri.jpg'),
  ];

  static List<Shipping> shippingList = [
    Shipping(id: 1, name: "JNE", image: 'assets/jne.png', cost: 46.0),
    Shipping(
        id: 2, name: "Pos Indonesia", image: 'assets/pos.png', cost: 45.0),
    Shipping(id: 3, name: "Sicepat", image: 'assets/sicepat.png', cost: 35.0),
    Shipping(id: 4, name: "TIKI", image: 'assets/tiki.png', cost: 44.0),
    Shipping(id: 5, name: "J&T", image: 'assets/jnt.png', cost: 36.5),
  ];
}
