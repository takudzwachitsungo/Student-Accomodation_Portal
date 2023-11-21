import 'package:ecommerce_int2/screens/auth/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final phoneno = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationService.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
