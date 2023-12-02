import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthorizationViewModel extends GetxController {
  TextEditingController authenticationHeaderController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> setAuthDetail(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
    update();
  }

  Future<String?> getAuthDetails(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final authToken = prefs.getString(key);
    return authToken;
  }
}
