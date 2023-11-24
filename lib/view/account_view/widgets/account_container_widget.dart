import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';
import 'package:tinycc_app/utils/constants/style.dart';
import '../../../utils/constants/colors.dart';

class AccountContainerWidget extends StatelessWidget {
  AccountContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  double height;
  double width;
  String text1;
  String text2;
  String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.12,
      width: width / 2,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              text1,
              style: AppStyle.rowContainerHeadStyle,
            ),
          ),
          AppSize.kHeight10,
          Text(
            text2,
            style: AppStyle.rowContainerItemsStyle,
          ),
          Text(
            text3,
            style: AppStyle.rowContainerItemsStyle,
          ),
        ],
      ),
    );
  }
}
