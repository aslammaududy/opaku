import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/home/views/product.dart';
import 'package:opaku/app/widgets/input_field.dart';
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
            InputField(
              controller: TextEditingController(),
              icon: Icons.search,
              hintText: "Search",
            ).marginSymmetric(horizontal: 20),
            SizedBox(
              height: 30,
            ),
            Text(
              'Our \nProducts',
              style: TextStyle(fontSize: 30),
            ).marginOnly(left: 20),
            SizedBox(
              height: 30,
            ),
            Product(),
          ],
        ),
      ),
    );
  }
}
