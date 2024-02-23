import 'package:conejoz/src/back_end/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final loginController = Get.put(LoginController());
  final loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        TextField(
          controller: TextEditingController(text: "test: Answer: If I, the universe chose this existence I am free. 
         
          
          "),
        )
      ]),
    );
  }
}
