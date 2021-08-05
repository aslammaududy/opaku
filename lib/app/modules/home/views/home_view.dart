import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/home/views/product.dart';
import 'package:opaku/app/widgets/layout.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              'Our \nProducts',
              style: TextStyle(fontSize: 30),
            ).marginOnly(left: 20),
            SizedBox(
              height: 50,
            ),
            Product(),
          ],
        ),
      ),
    );
  }
}
