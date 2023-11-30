import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  OutlinedButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.style
  });

  final String text;
  void Function()? onPressed;
  TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
