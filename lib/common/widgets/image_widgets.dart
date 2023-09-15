import 'package:flutter/material.dart';

Widget appImage(
    {required String imagePath, double width = 16.0, height = 16.0}) {
  return Image.asset(
    imagePath.isEmpty ? 'assets/icons/user.png' : imagePath,
    width: width,
    height: height,
  );
}
