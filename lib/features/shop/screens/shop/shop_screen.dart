import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
            appBar: const ShopAppbar(),
            body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: true,
                      floating: true,
                      // backgroundColor: Colors.red,
                      expandedHeight: 440,
                      flexibleSpace: Padding(
                        padding: const EdgeInsets.all(TSizes.defaultSpace),
                        child: ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            const SearchField(),
                            const SizedBox(
                              height: TSizes.spaceBtwItems,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "featured Brands",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .apply(fontWeightDelta: 2),
                                ),
                                SizedBox(
                                  height: 35,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 245, 212, 223),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    child: const Text("View All"),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: TSizes.spaceBtwItems,
                            ),
                            GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 2.5,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 15,
                                      crossAxisCount: 2),
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return const FeaturedBrands();
                              },
                            )
                          ],
                        ),
                      ),
                      bottom: const ShopTabbar(),
                    ),
                  ];
                },
                body: Container())),
      ),
    );
  }
}

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
            Tab(text: "Jewellery"),
            Tab(text: "Cosmetics"),
            Tab(text: "Shoes"),
          ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

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

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TSizes.defaultSpace * 2,
      width: 10,
      alignment: Alignment.center,
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Search In Store",
            hintStyle: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide(color: Colors.grey)),
            prefixIcon: Icon(Iconsax.search_normal),
            focusColor: Colors.grey),
      ),
    );
  }
}

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
