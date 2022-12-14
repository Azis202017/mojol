import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mojol/app/shared/color.dart';
import 'package:mojol/app/shared/fonts.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/input_widget.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: heading1,
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Name',
                  style: heading3,
                ),
              ),
              const SizedBox(height: 7),
              InputForm(
                controller: controller.nameTextEdtController,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Email',
                  style: heading3,
                ),
              ),
              const SizedBox(height: 7),
              InputForm(
                controller: controller.emailTextEdtController,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Password',
                  style: heading3,
                ),
              ),
              const SizedBox(height: 7),
              Obx(
                () => InputForm(
                  controller: controller.passwTextEditingController,
                  passwordVisible: controller.isPasswordVisible.value,
                  isPassword: true,
                  onPressed: controller.onPressed,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.registerUser();
                  },
                  child: Text(
                    'Sign Up',
                    style: heading3,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGNIN);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: textReg15.copyWith(
                        color: greyColor2,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style: textReg15.copyWith(
                            color: deepBlue,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
