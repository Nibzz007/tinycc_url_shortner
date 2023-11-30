import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/common_widgets/outline_input_button_widget.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import 'package:get/get.dart';
import 'package:tinycc_app/view/account_view/account_screen.dart';
import '../../model/account_model.dart';
import '../../utils/constants/images_string.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.account, this.auth});

  TinyccAccountModel? account;
  String? auth;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        width: width * 0.5,
        backgroundColor: AppColor.kWhite,
        child: SafeArea(
          child: Column(
            children: [
              AppSize.kHeight30,
              ListTile(
                title: const Text(
                  'Account',
                  style: AppStyle.drawerItemTextStyle,
                ),
                onTap: () => Get.to(
                    () => AccountScreen(
                          account: account,
                        ),
                    transition: Transition.cupertino),
                trailing: const Icon(
                  Icons.account_box_rounded,
                  color: AppColor.drawerItemsIconColor,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.homeBackColor,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(AppImages.splashImage1, height: height * 0.03),
            Image.asset(AppImages.splashImage2, height: height * 0.03),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              "Hello, ${account!.account.username.toUpperCase()}",
            ),
            Row(
              children: [
                OutlinedButtonWidget(
                  text: 'Shorten URL',
                  style: AppStyle.homeScreenButtonStyle,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: AppColor.kWhite,
                        title: const Text('Shorten URLs'),
                        content: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Paste a Big URL here...',
                              hintStyle: AppStyle.hintTextStyle,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Shorten it!'),
                          ),
                        ],
                        actionsAlignment: MainAxisAlignment.center,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
