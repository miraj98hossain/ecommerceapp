import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/buttom_navigationbar_controller.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ButtomNavigationBAr extends StatelessWidget {
  const ButtomNavigationBAr({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ButtomNavigationbarController());
    final dark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
              backgroundColor: dark
                  ? Colors.white
                  : const Color.fromARGB(255, 218, 218, 218),
              animationDuration: const Duration(seconds: 1),
              indicatorColor: dark
                  ? Colors.white.withOpacity(0.1)
                  : Colors.black.withOpacity(0.1),
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              height: 80,
              elevation: 0,
              selectedIndex: controller.currentIndex.value,
              onDestinationSelected: (value) {
                controller.currentIndex.value = value;
              },
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
                NavigationDestination(icon: Icon(Iconsax.shop), label: "Shop"),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: "Heart"),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: "Profile"),
              ]),
        ),
        body: Obx(() => controller.screens[controller.currentIndex.value]),
      ),
    );
  }
}
