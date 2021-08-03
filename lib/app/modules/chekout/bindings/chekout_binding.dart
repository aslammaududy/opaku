import 'package:get/get.dart';

import '../controllers/chekout_controller.dart';

class ChekoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChekoutController>(
      () => ChekoutController(),
    );
  }
}
