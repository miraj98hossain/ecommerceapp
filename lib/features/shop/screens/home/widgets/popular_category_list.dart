import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class PopularCategoryList extends StatelessWidget {
  const PopularCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      // color: Colors.red,
      height: 120,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.popularCategories,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .apply(color: TColors.white),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(TSizes.sm),
                      margin: const EdgeInsets.only(right: TSizes.sm),
                      decoration: const BoxDecoration(
                        color: TColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Column(
                        children: [
                          Image(
                            image: AssetImage(TImages.shoeIcon),
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 3, right: TSizes.sm, left: 2),
                      height: 20,
                      width: 40,
                      child: Text(
                        "Shoes",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: TColors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
