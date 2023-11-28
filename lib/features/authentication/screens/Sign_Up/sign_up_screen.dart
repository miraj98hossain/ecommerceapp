import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/log_in/widgets/divider.dart';
import 'package:t_store/features/authentication/screens/log_in/widgets/third_party_signin_Icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: dark ? Colors.black : Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Iconsax.arrow_left),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 650,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 190,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Iconsax.user),
                                  labelText: TTexts.firstName,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 190,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Iconsax.user),
                                  labelText: TTexts.lastName,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user_add),
                            labelText: TTexts.username,
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email,
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.call),
                            labelText: TTexts.phoneNo,
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.lastName,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        CheckBox(dark: dark),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(TTexts.createAccount),
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        CustomDivider(dark: dark),
                        const ThirdPartySigninIcon(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

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
