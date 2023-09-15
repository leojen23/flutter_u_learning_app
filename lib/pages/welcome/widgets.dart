import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widgets/utils/widgets/app_shadows.dart';
import 'package:ulearning_app/common/widgets/utils/widgets/text_widgets.dart';
import 'package:ulearning_app/pages/welcome/sign_in/sign_in.dart';

Widget appOnboardingPage(PageController controller,
    {required String imagePath,
    String title = '',
    String subtitle = '',
    int index = 0,
    required BuildContext context}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: text20Normal(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: text12Normal(text: subtitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
      } else {
        Navigator.pushNamed(context, '/signIn');
      }
    },
    child: Container(
      width: 270,
      height: 35,
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(child: text12Normal(text: 'Next', color: Colors.white)),
    ),
  );
}
