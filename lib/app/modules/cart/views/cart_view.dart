import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/cart/views/product_list.dart';
import 'package:opaku/app/widgets/layout.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        child: Column(
          children: controller.cartList
              .toSet()
              .toList()
              .map(
                (model) => ProductList(
                  model: model,
                  controller: controller,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
