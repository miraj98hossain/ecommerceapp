import 'package:flutter/material.dart';
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
        onPressed: () {},
        child: const Text("Skip"),
      ),
    );
  }
}
