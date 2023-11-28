import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    bool? dark,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Flexible(
          child: Divider(
              color: TColors.darkGrey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(
          TTexts.orSignInWith,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
          child: Divider(
              color: TColors.darkGrey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
