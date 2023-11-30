import 'package:flutter/material.dart';

import 'package:t_store/features/shop/screens/home/widgets/appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/circle_shape.dart';
import 'package:t_store/features/shop/screens/home/widgets/popular_category_list.dart';
import 'package:t_store/features/shop/screens/home/widgets/search_bar.dart';
import 'package:t_store/utils/constants/colors.dart';

import 'package:t_store/utils/constants/sizes.dart';

import 'package:t_store/utils/helpers/helper_functions.dart';

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
            ],
          ),
        ),
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
