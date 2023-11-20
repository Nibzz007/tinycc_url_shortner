import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinycc_app/network_service/network_api_services.dart';
import 'package:tinycc_app/utils/common_widgets/outline_input_button_widget.dart';
import 'package:tinycc_app/utils/common_widgets/textform_field_widget.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/view/home_view/home_screen.dart';
import 'package:tinycc_app/view_model/authorization_view_model.dart/authorization_view_model.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  // final AuthorizationViewModel authorizationViewModel  = Get.put(AuthorizationViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<AuthorizationViewModel>(
          init: AuthorizationViewModel(),
          builder: (AuthorizationViewModel authorizationViewModel) {
            return Form(
              key: authorizationViewModel.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormFieldWIdget(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      } else if (value.length < 62) {
                        return 'Enter correct authentication credentials';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    labelText: 'Enter Authentication-Header',
                    controller:
                        authorizationViewModel.authenticationHeaderController,
                  ),
                  AppSize.kHeight30,
                  Row(
                    children: [
                      OutlinedButtonWidget(
                        text: 'Show account',
                        onPressed: () async {
                          if (!authorizationViewModel.formKey.currentState!
                              .validate()) {
                            return;
                          }
                          final auth = authorizationViewModel
                              .authenticationHeaderController.text
                              .trim();
                          final account = await NetworkApiServices()
                              .getAccountDetails(auth);
                              log(account!.account.username);
                          Get.off(
                            () => HomeScreen(
                              account: account,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
