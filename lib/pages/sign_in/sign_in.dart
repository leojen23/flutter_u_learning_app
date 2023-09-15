import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widgets/button_widgets.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';
import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdPartyLogin(),
              Center(
                child: text10Normal(text: 'Or use you email addresss to login'),
              ),
              const SizedBox(height: 50),
              appTextField(
                  text: 'Email',
                  iconPath: 'assets/icons/user.png',
                  hintText: 'Enter your email address'),
              const SizedBox(height: 20),
              appTextField(
                  text: 'Password',
                  iconPath: 'assets/icons/lock.png',
                  hintText: 'enter you password',
                  obscureText: true),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: textUnderLine(text: 'Forgot your password ?'),
              ),
              const SizedBox(height: 80),
              Center(child: appButton(label: 'Login')),
              const SizedBox(height: 10),
              Center(child: appButton(label: 'Register', isLogin: false))
            ],
          ),
        ),
      ),
    );
  }
}
