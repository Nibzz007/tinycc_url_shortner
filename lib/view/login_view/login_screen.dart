import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldWIdget(),
            kHeight10,
            TextFormFieldWIdget(),
          ],
        ),
      ),
    );
  }
}

class TextFormFieldWIdget extends StatelessWidget {
  const TextFormFieldWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
