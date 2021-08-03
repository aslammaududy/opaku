import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChekoutController extends GetxController {
  //TODO: Implement ChekoutController

  final count = 0.obs;
  final addressController = TextEditingController();
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
  void increment() => count.value++;
}
