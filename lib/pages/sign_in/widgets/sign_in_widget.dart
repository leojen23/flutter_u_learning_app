import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widgets/app_shadows.dart';
import 'package:ulearning_app/common/widgets/image_widgets.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

//Prefered sized widget gives you a heigth from the appbar downward

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 0.2,
      ),
    ),
    title: text12Normal(text: "Login", color: AppColors.primaryText),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    child: SizedBox(
      width: 35,
      height: 35,
      child: Image.asset(imagePath),
    ),
  );
}

Widget appTextField(
    {String text = '',
    String iconPath = '',
    String hintText = 'Type here',
    bool obscureText = false}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text10Normal(text: text),
        const SizedBox(height: 3),
        Container(
          height: 35,
          width: 325,
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: appImage(imagePath: iconPath),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    hintText: hintText,
                    hintStyle: const TextStyle(fontSize: 12),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                  onChanged: (value) => {},
                  // maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
