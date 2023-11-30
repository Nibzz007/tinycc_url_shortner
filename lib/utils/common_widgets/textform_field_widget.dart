import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/style.dart';

class TextFormFieldWIdget extends StatelessWidget {
  TextFormFieldWIdget({
    super.key,
    required this.keyboardType,
    required this.labelText,
    this.controller,
    this.validator,
    this.borderRadius
  });

  TextInputType? keyboardType;
  String? labelText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  BorderRadiusGeometry? borderRadius;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all()
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        style: AppStyle.textFormFieldTextStyle,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppStyle.labelTextStyle,
        ),
      ),
    );
  }
}
