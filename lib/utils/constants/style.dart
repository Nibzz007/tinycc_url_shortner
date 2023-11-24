import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';

class AppStyle {
  // Login head style

  static const loginTextStyle = TextStyle(
    color: AppColor.kWhite,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  // TextFormField head style

  static const textFormFIeldheadStyle = TextStyle(
    color: AppColor.kWhite,
    fontSize: 16,
  );

  // TextFormField textStyle

  static const textFormFieldTextStyle = TextStyle(
    color: AppColor.kWhite,
  );

  // TextFormField labelText style

  static const labelTextStyle = TextStyle(
    color: AppColor.labelTextColor,
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  // Button style

  static const buttonStyle = TextStyle(
    color: AppColor.kWhite,
  );

  // Home Screen

  static const homeAppBarTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 3,
  );

  // Drawer Style

  static const drawerItemTextStyle = TextStyle(fontSize: 20);

  // Account Screen

  static const rowContainerHeadStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.5,
  );
  static const rowContainerItemsStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
  );
}
