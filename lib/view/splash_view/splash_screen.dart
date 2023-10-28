import 'package:flutter/material.dart';
import 'package:tinycc_app/network_service/network_api_services.dart';
import 'package:tinycc_app/view/login_view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    NetworkApiServices a = NetworkApiServices();
    a.readUrl();
    goToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.computer),
      ),
    );
  }
}

goToHome(context) async {
  await Future.delayed(Duration(seconds: 3))
      .then((value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          )));
}
