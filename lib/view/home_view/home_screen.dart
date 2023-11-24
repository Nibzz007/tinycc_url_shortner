import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import 'package:get/get.dart';
import 'package:tinycc_app/view/account_view/account_screen.dart';
import '../../model/account_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.account,this.auth});

  TinyccAccountModel? account;
  String? auth;

  @override
  Widget build(BuildContext context) {
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
                  transition: Transition.cupertino
                ),
                trailing: const Icon(
                  Icons.account_box_rounded,
                  color: AppColor.drawerItemsIconColor,
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.homeBackColor,
      appBar: AppBar(
        title: const Text(
          'TINY',
          style: AppStyle.homeAppBarTextStyle,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${account?.account.username}',
            ),
          ],
        ),
      ),
    );
  }
}
