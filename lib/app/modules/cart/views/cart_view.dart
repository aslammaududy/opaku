import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/cart/views/product_list.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/button.dart';
import 'package:opaku/app/widgets/layout.dart';
import 'package:opaku/app/widgets/title_text.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Cart',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            for (int i = 0;
                i < controller.cartList.toSet().toList().length;
                i++)
              ProductList(
                model: controller.cartList.toSet().toList()[i],
                controller: controller,
              ),
            Divider(
              thickness: 1,
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleText(
                  text: '${controller.cartList.length} Items',
                  color: LightColor.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                TitleText(
                  text: '${controller.total.value}',
                  fontSize: 18,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Button(text: "Pay", onPressed: () {}),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
