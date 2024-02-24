import 'package:conejoz/src/back_end/controllers/forget_password_controller.dart';
import 'package:conejoz/src/back_end/controllers/login_controller.dart';
import 'package:conejoz/src/back_end/repositories/authentication_repository/authentication_repository.dart';
import 'package:conejoz/src/front_end/global_components/custom_icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final forgetPasswordController = Get.put(ForgetPasswordController());
  final forgetPasswordFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                Row(
                  children: [
                    Icon(
                      ConejozLogos.conejozBlackFill,
                      size: 50.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () async {
                        if (forgetPasswordFormKey.currentState!.validate()) {
                          await AuthenticationRepository.instance.resetPassword(
                            forgetPasswordController.email.text.trim(),
                          );
                        }
                      },
                      child: Text('Reset ->'),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                  ],
                ),
                Form(
                  key: forgetPasswordFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: forgetPasswordController.email,
                        decoration: InputDecoration(
                          labelText: 'Email'.tr,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter an email'.tr;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
