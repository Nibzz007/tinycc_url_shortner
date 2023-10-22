import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import 'package:tinycc_app/utils/common_widgets/textform_field_widget.dart';
import 'package:tinycc_app/view/home_view/home_screen.dart';
import 'package:tinycc_app/view/sign_up_view/sign_up_screen.dart';
import '../../utils/common_widgets/outline_input_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSize.kHeight120,
              const Text(
                'Login',
                style: AppStyle.loginTextStyle,
              ),
              AppSize.kHeight80,
              const Text(
                'Email',
                style: AppStyle.textFormFIeldheadStyle,
              ),
              TextFormFieldWIdget(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Email Address',
              ),
              AppSize.kHeight10,
              const Text(
                'Password',
                style: AppStyle.textFormFIeldheadStyle,
              ),
              TextFormFieldWIdget(
                keyboardType: TextInputType.text,
                labelText: 'Password',
              ),
              AppSize.kHeight50,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButtonWidget(
                    text: 'Login',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              AppSize.kHeight10,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or',
                    style: TextStyle(color: AppColor.kWhite),
                  ),
                ],
              ),
              AppSize.kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButtonWidget(
                    text: 'Login with OTP',
                    onPressed: () {},
                  ),
                ],
              ),
              AppSize.kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Don't have an account ?",
                    style: TextStyle(color: AppColor.kWhite),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Create a new account',
                      style: TextStyle(
                        color: AppColor.kBlue,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.kBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
