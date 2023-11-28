import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/log_in/login.dart';

class OnboardingScreenController extends GetxController {
  static OnboardingScreenController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  void udatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigatorClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const Login());
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
