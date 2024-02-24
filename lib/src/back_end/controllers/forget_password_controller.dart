import 'package:conejoz/src/back_end/repositories/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //Textfield Controllers to get data from TextFields.
  final email = TextEditingController();

  // Call this function from Desing and it will do the rest.
  void resetUserPassword(String email) {
    AuthenticationRepository.instance.resetPassword(email);
  }
}
