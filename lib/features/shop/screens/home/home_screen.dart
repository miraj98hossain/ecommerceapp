import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/controller/home_controller.dart';
import 'package:t_store/features/shop/screens/home/widgets/Cart.dart';

import 'package:t_store/features/shop/screens/home/widgets/appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/circle_shape.dart';
import 'package:t_store/features/shop/screens/home/widgets/popular_category_list.dart';
import 'package:t_store/features/shop/screens/home/widgets/search_bar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import 'package:t_store/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: customCliper(),
                child: Container(
                  height: THelperFunctions.screenHeight() * 0.36,
                  width: double.infinity,
                  color: TColors.primary,
                  padding: const EdgeInsets.all(0),
                  child: const Stack(
                    children: [
                      CircleShape(top: -140, right: -180),
                      CircleShape(top: 80, right: -200),
                      Column(
                        children: [
                          SizedBox(
                            height: TSizes.sm,
                          ),
                          HeaderAppbar(),
                          SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          HeaderSearchBar(),
                          SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),
                          PopularCategoryList()
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          controller.updateCarouselIndex(index);
                        },
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        PromoImage(
                            image:
                                "assets/images/products/promo-banner-${itemIndex + 1}.png"),
                  ),
                  Obx(
                    () => DotsIndicator(
                      dotsCount: 3,
                      position: controller.carouselCurrentIndex.value,
                      decorator: DotsDecorator(
                        color: const Color.fromARGB(
                            137, 131, 129, 129), // Inactive color
                        activeColor: TColors.primary,
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          TTexts.popularProducts,
                          style: Theme.of(context).textTheme.titleMedium!.apply(
                              color: const Color.fromARGB(255, 32, 30, 30)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View All"),
                        ),
                      ],
                    ),
                    GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, mainAxisExtent: 294),
                      itemBuilder: (context, index) => const CustomCart(
                          priceDiscount: "78%",
                          productName: "Green Nike Sprots Shoes",
                          productPrice: "\$200",
                          productImage: TImages.productImage1,
                          brandName: "Nike"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoImage extends StatelessWidget {
  const PromoImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(TSizes.md),
        child: Image(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.contain),
      ),
    );
  }
}

class customCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);
    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);
    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdLastCurve.dx, thirdLastCurve.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
