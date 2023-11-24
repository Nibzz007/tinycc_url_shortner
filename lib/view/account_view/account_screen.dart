import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/view/account_view/widgets/row_container_widget.dart';
import '../../model/account_model.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({
    super.key,
    required this.account,
    this.auth,
  });

  final TinyccAccountModel? account;
  String? auth;

  @override
  Widget build(BuildContext context) {
    final accountDetails = account?.account;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.homeBackColor,
      appBar: AppBar(
        title: Text(
          'Hello, ${accountDetails?.username.toUpperCase()}',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            AppSize.kHeight10,
            Container(
              height: height * 0.05,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.kWhite,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  'User Id : ${accountDetails!.userId.toString()}',
                ),
              ),
            ),
            AppSize.kHeight20,
            containerRow(height, width, accountDetails),
            AppSize.kHeight20,
            Text('Version ${account?.version}'),
          ],
        ),
      ),
    );
  }
}
