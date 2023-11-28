import 'package:ecommerce_int2/screens/main/extra_material/assignment_screen.dart';
import 'package:ecommerce_int2/screens/main/extra_material/datesheet_screen.dart';
import 'package:ecommerce_int2/screens/main/extra_material/fee_screen.dart';
import 'package:ecommerce_int2/screens/main/extra_material/login_screen.dart';
import 'package:ecommerce_int2/screens/main/extra_material/my_profile.dart';
import 'package:ecommerce_int2/screens/main/extra_material/splash_screen.dart';
import 'package:ecommerce_int2/screens/main/features.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
};
