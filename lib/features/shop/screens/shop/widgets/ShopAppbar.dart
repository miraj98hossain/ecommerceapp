import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ShopAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Shop", style: Theme.of(context).textTheme.titleLarge),
        IconButton(onPressed: () {}, icon: const Icon(Iconsax.shopping_bag)),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
