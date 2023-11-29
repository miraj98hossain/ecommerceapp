import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/buttom_navigationbar_controller.dart';

class ButtomNavigationBAr extends StatelessWidget {
  const ButtomNavigationBAr({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ButtomNavigationbarController());
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
              height: 80,
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
