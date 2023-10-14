import 'package:flutter/material.dart';
import '../constants/style.dart';

class OutlinedButtonWidget extends StatelessWidget {
  OutlinedButtonWidget({
    super.key,
   required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          text,
          style: AppStyle.buttonStyle,
        ),
      ),
    );
  }
}