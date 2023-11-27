import 'package:flutter/material.dart';

import 'package:t_store/features/authentication/screens/widgets/indicator.dart';
import 'package:t_store/features/authentication/screens/widgets/nextButton.dart';
import 'package:t_store/features/authentication/screens/widgets/onboardingpage.dart';
import 'package:t_store/features/authentication/screens/widgets/skipbutton.dart';

import 'package:t_store/utils/constants/image_strings.dart';

import 'package:t_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const SkipButton(),
          const Indicator(),
          const NextPageButton()
        ]),
      ),
    );
  }
}
