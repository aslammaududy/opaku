import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/button.dart';
import 'package:opaku/app/widgets/input_field.dart';
import 'package:opaku/app/widgets/layout.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 80,
            ),
            Obx(
              () => InputField(
                controller: controller.emailController,
                icon: Icons.email,
                hintText: "Email",
                errorText: controller.errorEmail.value,
              ).marginOnly(bottom: 15),
            ),
            Obx(
              () => InputField(
                controller: controller.passwordController,
                icon: Icons.lock,
                hintText: "Password",
                errorText: controller.errorPassword.value,
                obsecureText: true,
              ).marginOnly(bottom: 15),
            ),
            Button(
              onPressed: () => controller.login(),
              text: "Login",
            ).marginOnly(bottom: 10),
            TextButton(
              onPressed: () => Get.offAndToNamed(Routes.SIGNUP),
              child: Text(
                'Don\'t have an account? Signup',
                style: TextStyle(color: LightColor.orange),
              ),
            ),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
