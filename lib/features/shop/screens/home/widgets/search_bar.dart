import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HeaderSearchBar extends StatelessWidget {
  const HeaderSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      height: 55,
      width: double.infinity,
      child: TextFormField(
        decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Iconsax.search_normal),
            hintText: "Search In Store"),
      ),
    );
  }
}
