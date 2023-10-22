import 'package:flutter/material.dart';
import '../constants/style.dart';

class OutlinedButtonWidget extends StatelessWidget {
  OutlinedButtonWidget({
    super.key,
   required this.text,
   required this.onPressed
  });

  final String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyle.buttonStyle,
        ),
      ),
    );
  }
}