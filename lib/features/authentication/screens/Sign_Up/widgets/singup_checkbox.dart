import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: TextStyle(color: dark ? TColors.white : TColors.black),
              ),
              TextSpan(
                text: "${TTexts.privacyPolicy} ",
                style: TextStyle(color: dark ? TColors.white : TColors.primary)
                    .apply(decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: '${TTexts.and} ',
                style: TextStyle(color: dark ? TColors.white : TColors.black),
              ),
              TextSpan(
                text: '${TTexts.termsOfUse} ',
                style: TextStyle(color: dark ? TColors.white : TColors.primary)
                    .apply(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
