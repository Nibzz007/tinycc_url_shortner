import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import '../../model/account_model.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    super.key,
    required this.account,
  });

  final TinyccAccountModel? account;

  @override
  Widget build(BuildContext context) {
    final accountDetails = account?.account;
    return Scaffold(
      backgroundColor: AppColor.homeBackColor,
      appBar: AppBar(
        title: Text(
          'Hello, ${accountDetails?.username.toUpperCase()}',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            AppSize.kHeight10,
            Text('User Id : ${accountDetails!.userId.toString()}'),
            AppSize.kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Urls ${accountDetails.counters.urls.count}'),
                Text('Url Limit ${accountDetails.counters.urls.limit}'),
              ],
            ),
            AppSize.kHeight20,
            Text('Version ${account?.version}'),
            AppSize.kHeight20,
            const Text('Daily API calls'),
            Text('Count ${accountDetails.counters.todayApiCalls.count}'),
          ],
        ),
      ),
    );
  }
}
