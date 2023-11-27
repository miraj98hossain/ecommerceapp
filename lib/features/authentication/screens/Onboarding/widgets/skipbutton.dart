import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/features/authentication/controllers/OnboardingScreenController.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TSizes.defaultSpace,
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingScreenController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
