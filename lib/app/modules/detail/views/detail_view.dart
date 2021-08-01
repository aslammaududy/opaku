import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/data/product.dart';
import 'package:opaku/app/modules/cart/controllers/cart_controller.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/button.dart';
import 'package:opaku/app/widgets/layout.dart';
import 'package:opaku/app/widgets/title_text.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    Product product = Get.arguments;
    return Scaffold(
      body: Layout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(product.image ?? '')),
            SizedBox(
              height: 20,
            ),
            TitleText(
              text: product.name ?? '',
              fontSize: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleText(
                  text: '${product.price}',
                  fontSize: 15,
                ),
                Obx(
                  () => IconButton(
                    icon: Icon(
                      controller.favorites.contains(product)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: controller.favorites.contains(product)
                          ? LightColor.red
                          : LightColor.iconColor,
                    ),
                    onPressed: () {
                      controller.favorites.contains(product)
                          ? controller.removeFavorite(product)
                          : controller.addToFavorite(product);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"),
            SizedBox(
              height: 50,
            ),
            Button(
              onPressed: () => cartController.add(product),
              text: "Add to cart",
            ).marginOnly(bottom: 10),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
