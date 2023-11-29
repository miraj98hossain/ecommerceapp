import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifySuccess extends StatelessWidget {
  const VerifySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 251, 251, 251),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      width: THelperFunctions.screenWidth() * 0.5,
                      image:
                          const AssetImage(TImages.staticSuccessIllustration),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      TTexts.yourAccountCreatedTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      TTexts.yourAccountCreatedSubTitle,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(TTexts.tContinue),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
