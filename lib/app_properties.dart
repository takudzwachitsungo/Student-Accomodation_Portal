import 'package:flutter/material.dart';

const Color yellow = Color(0xffFDC054);
const Color primaryColor = Color.fromARGB(255, 51, 21, 134);
const Color mediumBlue = Color.fromARGB(255, 53, 36, 98);
const Color secondaryColor = Color.fromARGB(255, 211, 27, 36);
const Color mediumYellow = Color(0xffFDB846);
const Color darkYellow = Color(0xffE99E22);
const Color fadedwhite = Color.fromARGB(255, 245, 241, 245);
const Color transparentYellow = Color.fromARGB(172, 216, 197, 49);
const Color transparentBlue = Color.fromARGB(172, 211, 212, 225);
const Color darkGrey = Color(0xff202020);

const LinearGradient mainButton = LinearGradient(colors: [
  Color.fromRGBO(236, 19, 3, 1),
  Color.fromRGBO(234, 3, 196, 1),
  Color.fromRGBO(216, 78, 16, 1),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}
