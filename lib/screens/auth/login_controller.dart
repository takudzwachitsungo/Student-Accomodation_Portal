import 'package:ecommerce_int2/screens/auth/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  /// TextField Validation

  //Call this Function from Design & it will do the rest
  Future<void> login() async {
    AuthenticationService.instance
        .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
  }
}
