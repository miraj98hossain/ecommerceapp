import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/widgets/Cart.dart';

import 'package:t_store/features/shop/screens/shop/widgets/BrandTopProducts.dart';
import 'package:t_store/features/shop/screens/shop/widgets/FeaturedBrands.dart';
import 'package:t_store/features/shop/screens/shop/widgets/SearchField.dart';
import 'package:t_store/features/shop/screens/shop/widgets/ShopAppbar.dart';
import 'package:t_store/features/shop/screens/shop/widgets/ShopTabbar.dart';

import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});
  List<String> images = [
    TImages.productImage1,
    TImages.productImage2,
    TImages.productImage3,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
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
                        sectionnameWithButton(
                            context, "Featured Brands", "View All"),
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
            body: TabBarView(
              children: [
                shopTab(
                    context,
                    TImages.nikeLogo,
                    "Nike",
                    images,
                    "78%",
                    "\$200",
                    "Green Nike Sprots Shoes",
                    "Nike",
                    TImages.productImage1),
                shopTab(
                    context,
                    TImages.nikeLogo,
                    "Nike",
                    images,
                    "78%",
                    "\$200",
                    "Green Nike Sprots Shoes",
                    "Nike",
                    TImages.productImage1),
                shopTab(
                    context,
                    TImages.nikeLogo,
                    "Nike",
                    images,
                    "78%",
                    "\$200",
                    "Green Nike Sprots Shoes",
                    "Nike",
                    TImages.productImage1),
                shopTab(
                    context,
                    TImages.nikeLogo,
                    "Nike",
                    images,
                    "78%",
                    "\$200",
                    "Green Nike Sprots Shoes",
                    "Nike",
                    TImages.productImage1),
                shopTab(
                    context,
                    TImages.nikeLogo,
                    "Nike",
                    images,
                    "78%",
                    "\$200",
                    "Green Nike Sprots Shoes",
                    "Nike",
                    TImages.productImage1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget shopTab(
      BuildContext context,
      String topBrandLogo,
      String topBrandName,
      List<String> topBrandProductImage,
      String cartdiscount,
      String cartprice,
      String cartProductname,
      String cartBrandname,
      String cartProductImage) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              topBrandWithProducts(
                  context, topBrandLogo, topBrandName, topBrandProductImage),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              sectionnameWithButton(context, "You Might Like", "View All"),
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 294),
                itemBuilder: (context, index) => CustomCart(
                    priceDiscount: cartdiscount,
                    productName: cartProductname,
                    productPrice: cartprice,
                    productImage: cartProductImage,
                    brandName: cartBrandname),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget topBrandWithProducts(BuildContext context, String brandLogo,
      String brandName, List<String> topProductImage) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: TSizes.defaultSpace,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        // color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image(
                        height: 45,
                        image: AssetImage(brandLogo),
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
                            brandName,
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
              Row(
                  children: topProductImage
                      .map((image) => BrandTopProducts(context, image))
                      .toList())
            ],
          ),
        ),
      ],
    );
  }

  Widget sectionnameWithButton(
      BuildContext context, String sectionName, String buttonName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionName,
          style:
              Theme.of(context).textTheme.titleLarge!.apply(fontWeightDelta: 2),
        ),
        SizedBox(
          height: 35,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 212, 223),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Text(buttonName),
          ),
        )
      ],
    );
  }
}
