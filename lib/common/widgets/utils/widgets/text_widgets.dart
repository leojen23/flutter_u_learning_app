import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widgets/utils/app_colors.dart';

Widget text20Normal(
    {required String text, Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.normal),
  );
}

Widget text12Normal(
    {required String text,
    Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.normal),
  );
}

Widget text10Normal(
    {required String text, Color color = AppColors.primaryThreeElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.normal),
  );
}

Widget textUnderLine({String text = 'your Text'}) {
  return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline,
            color: AppColors.primaryText,
            fontSize: 10,
          ),
        ),
      ));
}
