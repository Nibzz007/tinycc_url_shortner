import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/common_widgets/outline_input_button_widget.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import 'package:tinycc_app/utils/common_widgets/textform_field_widget.dart';
import 'package:tinycc_app/view/login_view/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSize.kHeight10,
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.kWhite,
                ),
                iconSize: 18,
              )
            ],
          ),
          AppSize.kHeight10,
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSize.kHeight50,
                const Text(
                  'Sign Up',
                  style: AppStyle.loginTextStyle,
                ),
                AppSize.kHeight50,
                TextFormFieldWIdget(
                  keyboardType: TextInputType.name,
                  labelText: 'Enter your name',
                ),
                AppSize.kHeight20,
                TextFormFieldWIdget(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Enter your email address',
                ),
                AppSize.kHeight20,
                TextFormFieldWIdget(
                  keyboardType: TextInputType.text,
                  labelText: 'Enter a password',
                ),
                AppSize.kHeight20,
                TextFormFieldWIdget(
                  keyboardType: TextInputType.text,
                  labelText: 'Confirm password',
                ),
                AppSize.kHeight20,
              ],
            ),
          ),
          AppSize.kHeight50,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                OutlinedButtonWidget(text: 'Sign Up'),
              ],
            ),
          ),
          AppSize.kHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Already have an account ?',
                  style: TextStyle(color: AppColor.kWhite),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: AppColor.kBlue,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.kBlue,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
