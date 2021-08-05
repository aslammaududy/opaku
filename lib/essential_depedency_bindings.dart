import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/cart/controllers/cart_controller.dart';

class EssentialDependencyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(FirebaseAnalytics(), permanent: true);
    Get.put(CartController(), permanent: true);
  }
}
