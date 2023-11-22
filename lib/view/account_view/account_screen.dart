import 'package:flutter/material.dart';
import 'package:tinycc_app/network_service/network_api_services.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import '../../model/account_model.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({
    super.key,
    required this.account,
    this.auth
  });

  final TinyccAccountModel? account;
  String? auth;

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int? updatedApiCallsCount;
  @override
  Widget build(BuildContext context) {
    final accountDetails = widget.account?.account;
    return Scaffold(
      backgroundColor: AppColor.homeBackColor,
      appBar: AppBar(
        title: Text(
          'Hello, ${accountDetails?.username.toUpperCase()}',
        ),
        actions: [
          //! Not Working properly
          IconButton(
            onPressed: () async {
               var updatedAccount = await NetworkApiServices().getAccountDetails(widget.auth);
               setState(() {
                 updatedApiCallsCount = updatedAccount!.account.counters.todayApiCalls.count;
               });
            },
            icon: const Icon(Icons.refresh_sharp),
          ),
        ],
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
            Text('Version ${widget.account?.version}'),
            AppSize.kHeight20,
            const Text('Daily API calls'),

            Text('Count ${updatedApiCallsCount ?? accountDetails.counters.todayApiCalls.count}'),
          ],
        ),
      ),
    );
  }
}
