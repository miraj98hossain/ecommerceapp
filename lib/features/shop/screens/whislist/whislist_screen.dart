import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/buttom_navigationbar_controller.dart';
import 'package:t_store/features/shop/screens/home/home_screen.dart';

class WhislistScreen extends StatelessWidget {
  const WhislistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Whislist",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            IconButton(
              onPressed: () {
                final controller = Get.put(ButtomNavigationbarController());
                controller.currentIndex.value = 0;
              },
              icon: const Icon(Iconsax.add),
            )
          ],
        ),
      ),
    );
  }
}
