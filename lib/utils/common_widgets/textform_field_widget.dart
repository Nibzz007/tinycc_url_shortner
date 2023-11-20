import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/style.dart';

class TextFormFieldWIdget extends StatelessWidget {
  TextFormFieldWIdget({
    super.key,
    required this.keyboardType,
    required this.labelText,
    this.controller,
    this.validator
  });

  TextInputType? keyboardType;
  String? labelText;
  TextEditingController? controller;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      style: AppStyle.textFormFieldTextStyle,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppStyle.labelTextStyle,
      ),
    );
  }
}
