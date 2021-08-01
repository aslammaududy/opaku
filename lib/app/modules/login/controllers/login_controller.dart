import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/themes/light_color.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var errorEmail = "".obs;
  var errorPassword = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
        Get.offAndToNamed(Routes.HOME);
      }
    });
  }

  @override
  void onClose() {}

  void login() async {
    Get.defaultDialog(
      content: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(LightColor.orange),
      ),
      title: "Please Wait",
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorEmail.value = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errorPassword.value = 'Wrong password provided for that user.';
      }
    }

    Get.back();
    Get.offAndToNamed(Routes.HOME);
  }
}