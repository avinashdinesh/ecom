import 'package:ecomm/features/authentication/screens/login.dart';
import 'package:ecomm/features/authentication/screens/verification.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  void nextPage() {
    Get.to(LoginScreen());
  }
}

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  void loginn() {
    Get.to(OtpForm());
  }
}
