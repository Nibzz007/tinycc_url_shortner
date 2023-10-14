import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import 'package:tinycc_app/view/login_view/widgets/textform_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlack,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: AppStyle.loginTextStyle,
            ),
            AppSize.kHeight50,
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
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: AppStyle.buttonStyle,
                    ),
                  ),
                ),
              ],
            ),
            AppSize.kHeight10,
            Row(
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
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Login with OTP',
                      style: AppStyle.buttonStyle,
                    ),
                  ),
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
                  onPressed: () {},
                  child: const Text(
                    'Create a new account',
                    style: TextStyle(
                      color: AppColor.kBlue,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.kBlue,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
