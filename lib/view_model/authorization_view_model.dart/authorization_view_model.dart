import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthorizationViewModel extends GetxController {
  TextEditingController authenticationHeaderController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
}