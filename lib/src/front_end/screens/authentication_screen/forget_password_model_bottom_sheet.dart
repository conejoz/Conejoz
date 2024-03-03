import 'package:conejoz/src/front_end/global_components/ui_variables.dart';
import 'package:conejoz/src/front_end/screens/authentication_screen/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get.dart';

class ForgetPasswordBottomSheet {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(engDefaultSize),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Restore your password".tr,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Select one of the options below".tr),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ForgetPasswordScreen();
              }));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: [
                  const Icon(Icons.email_outlined, size: 60),
                  const SizedBox(width: 20),
                  Text(
                    "Email".tr,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
