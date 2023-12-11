import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

Widget BrandTopProducts(BuildContext context, String image) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.symmetric(
          horizontal: TSizes.spaceBtwItems, vertical: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(5),
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 134, 128, 127),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image(
        image: AssetImage(image),
      ),
    ),
  );
}
