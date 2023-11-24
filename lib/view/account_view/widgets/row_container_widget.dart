import 'package:flutter/material.dart';
import '../../../model/account_model.dart';
import '../../../utils/constants/sizes.dart';
import 'account_container_widget.dart';

Widget containerRow(
    double height,
    double width,
    Account accountDetails,
  ) {
    return Row(
      children: [
        Expanded(
          child: AccountContainerWidget(
            height: height,
            width: width,
            text1: 'URL',
            text2: 'Total Urls ${accountDetails.counters.urls.count}',
            text3: 'Url Limit ${accountDetails.counters.urls.limit}',
          ),
        ),
        AppSize.kWidth10,
        Expanded(
          child: AccountContainerWidget(
            height: height,
            width: width,
            text1: 'Daily API Calls',
            text2: 'Count ${accountDetails.counters.todayApiCalls.count}',
            text3: 'Daily Limit ${accountDetails.counters.todayApiCalls.limit}',
          ),
        )
      ],
    );
  }