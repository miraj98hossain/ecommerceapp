import 'package:get/get.dart';

import 'package:t_store/features/shop/screens/home/home_screen.dart';
import 'package:t_store/features/shop/screens/profile/profile_screen.dart';
import 'package:t_store/features/shop/screens/shop/shop_screen.dart';
import 'package:t_store/features/shop/screens/whislist/whislist_screen.dart';

class ButtomNavigationbarController extends GetxController {
  static ButtomNavigationbarController get instance => Get.find();
  final Rx<int> currentIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    ShopScreen(),
    const WhislistScreen(),
    const ProfileScreen()
  ];
}
