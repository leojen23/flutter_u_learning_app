import 'package:flutter/material.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/common/widgets/app_shadows.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';

Widget appButton({
  required String label,
  double width = 250,
  double height = 35,
  bool isLogin = true,
}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: appBoxShadow(
            color: isLogin ? AppColors.primaryElement : Colors.white,
            border: Border.all(color: AppColors.primaryFourElementText)),
        child: Center(
            child: text12Normal(
                text: label,
                color: isLogin
                    ? AppColors.primaryBackground
                    : AppColors.primaryText)),
      ),
    ),
  );
}
