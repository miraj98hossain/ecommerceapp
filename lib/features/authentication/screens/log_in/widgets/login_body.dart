import 'package:flutter/material.dart';

import 'package:t_store/features/authentication/screens/log_in/widgets/body_form.dart';
import 'package:t_store/features/authentication/screens/log_in/widgets/divider.dart';
import 'package:t_store/features/authentication/screens/log_in/widgets/third_party_signin_Icon.dart';

import 'package:t_store/utils/constants/sizes.dart';

import 'package:t_store/utils/helpers/helper_functions.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      margin: const EdgeInsets.all(10),
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
        color: dark ? Colors.black : const Color.fromARGB(255, 254, 254, 254),
      ),
      child: Column(
        children: [
          BodyForm(dark: dark),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          const CustomDivider(),
          const ThirdPartySigninIcon(),
        ],
      ),
    );
  }
}
