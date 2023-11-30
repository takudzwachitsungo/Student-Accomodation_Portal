import 'package:ecommerce_int2/screens/auth/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final password_2 = TextEditingController();

  void registerUser(String email, String password, String password_2) {
    if (password != password_2) {
      // Passwords don't match, handle this case (e.g., show an error message)
      print('Passwords do not match');
      // You can return or throw an error to handle this case as needed
      return;
    }

    AuthenticationService.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
