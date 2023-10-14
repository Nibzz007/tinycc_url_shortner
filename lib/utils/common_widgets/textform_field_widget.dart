import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/style.dart';

class TextFormFieldWIdget extends StatelessWidget {
  TextFormFieldWIdget(
      {super.key, required this.keyboardType, required this.labelText});

  TextInputType? keyboardType;
  String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppStyle.labelTextStyle,
      ),
    );
  }
}
