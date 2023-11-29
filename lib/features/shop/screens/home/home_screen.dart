import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Stack(
                    children: [
                      Positioned(
                        top: -140,
                        right: -180,
                        child: Container(
                          height: 300,
                          width: 300,
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: Colors.white.withOpacity(0.2)),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        right: -200,
                        child: Container(
                          height: 300,
                          width: 300,
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: Colors.white.withOpacity(0.2)),
                        ),
                      ),
                      Column(
                        children: [
                          const Appbar(),
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: TSizes.defaultSpace),
                            height: 100,
                            width: double.infinity,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Icon(Iconsax.search_normal),
                                  hintText: "Search In Store"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        badges.Badge(
          badgeStyle: const badges.BadgeStyle(padding: EdgeInsets.all(3)),
          position: badges.BadgePosition.topEnd(top: 1, end: 4.5),
          badgeContent: Text(
            "10",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.shopping_bag),
          ),
        )
      ],
      automaticallyImplyLeading: false,
      title: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Image(image: AssetImage(TImages.user)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey),
            ),
            Text(
              TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.grey),
            ),
          ],
        ),
      ]),
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
