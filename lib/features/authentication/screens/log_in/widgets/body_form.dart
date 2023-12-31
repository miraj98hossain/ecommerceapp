import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/bottom_navigation_bar.dart';
import 'package:t_store/features/authentication/screens/Sign_Up/sign_up_screen.dart';
import 'package:t_store/features/authentication/screens/log_in/forgot_password.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class BodyForm extends StatelessWidget {
  const BodyForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.direct_right),
              labelText: TTexts.email,
              labelStyle:
                  TextStyle(color: dark ? TColors.white : TColors.black),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              labelText: TTexts.password,
              labelStyle:
                  TextStyle(color: dark ? TColors.white : TColors.black),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                onPressed: () {
                  Get.to(const ForgotPassword());
                },
                child: const Text(TTexts.forgetPassword),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.offAll(const ButtomNavigationBAr());
              },
              child: const Text(TTexts.signIn),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(const SignUpScreen());
              },
              child: Text(
                TTexts.createAccount,
                style: TextStyle(color: dark ? TColors.white : TColors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
