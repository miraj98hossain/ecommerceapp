import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class ShopTabbar extends StatelessWidget implements PreferredSizeWidget {
  const ShopTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(9), topRight: Radius.circular(9)),
        color: Colors.white,
      ),
      child: const TabBar(
          indicatorColor: TColors.primary,
          isScrollable: true,
          tabs: [
            Tab(text: "Sports"),
            Tab(text: "Furnitures"),
            Tab(text: "Electronics"),
            Tab(text: "Clothes"),
            Tab(text: "Cosmetics"),
          ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 0.001);
}
