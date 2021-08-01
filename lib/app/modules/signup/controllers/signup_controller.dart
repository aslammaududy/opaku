import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/themes/light_color.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
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
  }

  @override
  void onClose() {}

  void signUp() async {
    Get.defaultDialog(
      content: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(LightColor.orange),
      ),
      title: "Please Wait",
    );

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      Get.offAndToNamed(Routes.LOGIN);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        errorPassword.value = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        errorEmail.value = 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
    }

    Get.back();
  }
}
