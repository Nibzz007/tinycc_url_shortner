import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homeBackColor,
      appBar: AppBar(
        title: const Text(
          'TINY',
          style: AppStyle.homeAppBarTextStyle,
        ),
      ),
      body: const Column(),
    );
  }
}
