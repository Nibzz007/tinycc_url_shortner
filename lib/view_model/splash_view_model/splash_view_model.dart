import 'package:get/get.dart';
import 'package:tinycc_app/view/login_view/login_screen.dart';
import 'package:tinycc_app/view_model/authorization_view_model.dart/authorization_view_model.dart';

class SplashViewModel extends GetxController {
  AuthorizationViewModel controller = Get.put(AuthorizationViewModel());
  void onInIt() {
    super.onInit();
    final token = controller.getAuthDetails('auth_token');
    if(token == null) {
      Get.offAll(LoginScreen());
    } else {
    }
  }
}
