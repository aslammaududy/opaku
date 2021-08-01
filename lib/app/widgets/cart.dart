import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/cart/controllers/cart_controller.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/app_icon.dart';
import 'package:opaku/app/widgets/title_text.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartController>();

    return InkWell(
      onTap: () => Get.toNamed(Routes.CART),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          AppIcon(icon: Icons.shopping_cart),
          Obx(
            () => controller.cartList.length > 0
                ? TitleText(
                    text: "*",
                    color: LightColor.red,
                    fontSize: 15,
                  )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
