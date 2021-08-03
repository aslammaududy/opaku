import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/modules/login/controllers/login_controller.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/widgets/app_icon.dart';
import 'package:opaku/app/widgets/cart.dart';

class TopMenuBar extends StatelessWidget {
  TopMenuBar({Key? key}) : super(key: key);
  final LoginController controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Get.currentRoute == '/signup' ||
            Get.currentRoute == '/login' ||
            Get.currentRoute == '/cart'
        ? SizedBox.shrink()
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Get.currentRoute == '/home'
                  ? InkWell(
                      child: AppIcon(
                        icon: Icons.logout,
                      ),
                      onTap: () => controller.logout(),
                    ).marginOnly(left: 20)
                  : InkWell(
                      child: AppIcon(
                        icon: Icons.home,
                      ),
                      onTap: () => Get.offAndToNamed(Routes.HOME),
                    ).marginOnly(left: 20),
              Cart().marginOnly(right: 20),
            ],
          );
  }
}
