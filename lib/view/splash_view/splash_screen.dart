import 'package:flutter/material.dart';
import 'package:tinycc_app/utils/constants/colors.dart';
import 'package:tinycc_app/utils/constants/images_string.dart';
import 'package:tinycc_app/view/login_view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homeBackColor,
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.splashImage1),
          Image.asset(AppImages.splashImage2),
        ],
      )),
    );
  }
}

goToHome(context) async {
  await Future.delayed(const Duration(seconds: 3)).then(
    (value) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    ),
  );
}
