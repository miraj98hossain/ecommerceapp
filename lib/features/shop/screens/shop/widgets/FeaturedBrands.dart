import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class FeaturedBrands extends StatelessWidget {
  const FeaturedBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white.withOpacity(0.75)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Image(
                height: 45,
                image: AssetImage(TImages.nikeLogo),
              ),
            ),
          ),
          const SizedBox(
            width: TSizes.spaceBtwInputFields / 1.5,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Nike ",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Icon(
                    Iconsax.verify5,
                    size: 14,
                  )
                ],
              ),
              Text(
                "256 Products Found in this Brand ",
                style: Theme.of(context).textTheme.labelMedium,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ))
        ],
      ),
    );
  }
}
