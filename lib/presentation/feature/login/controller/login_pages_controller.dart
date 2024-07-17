import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/routes/route_name.dart';

class LoginPagesController extends GetxController {
  TextEditingController userID = TextEditingController();
  RxnString userIDError = RxnString(null);
  TextEditingController password = TextEditingController();
  RxnString passwordError = RxnString(null);
  RxBool passwordObscure = true.obs;

  RxBool isLoading = false.obs;
  RxBool isValid = true.obs;


  @override
  void onInit() {
    userID.text = 'ari.utomo';
    password.text = '123456';
    super.onInit();
  }

  void login() async {
    if (!validateLogin()) {
      return;
    }
    Get.toNamed(RouteName.home);
  }

  bool validateLogin() {
    userIDError.value = null;
    passwordError.value = null;

    if (userID.text.isEmpty) {
      userIDError.value = 'User ID tidak boleh kosong';
      return false;
    }

    if (password.text.isEmpty) {
      passwordError.value = 'Password tidak boleh kosong';
      return false;
    }

    return true;
  }

}