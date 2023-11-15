import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationService extends GetxController {
  static AuthenticationService get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {}
}
