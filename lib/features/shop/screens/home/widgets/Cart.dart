import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

import 'package:t_store/utils/constants/sizes.dart';

class CustomCart extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String brandName;
  final String productImage;
  final String priceDiscount;
  const CustomCart(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.productImage,
      this.priceDiscount = "",
      required this.brandName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
                color: TColors.darkGrey.withOpacity(0.2),
                blurRadius: 50,
                spreadRadius: 7,
                offset: const Offset(0, 2)),
          ]),
      child: Column(
        children: [
          CartHeader(productImage: productImage, priceDiscount: priceDiscount),
          const SizedBox(
            height: 5,
          ),
          CartBody(
              productName: productName,
              productPrice: productPrice,
              brandName: brandName),
        ],
      ),
    );
  }
}

class CartBody extends StatelessWidget {
  final String productName;
  final String brandName;
  final String productPrice;
  const CartBody({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.brandName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: Colors.black,
                  fontWeightDelta: 2,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(brandName),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.verified,
                size: 15,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productPrice,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                width: 30,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color.fromARGB(255, 28, 19, 19)),
                child: const Icon(
                  Iconsax.add,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartHeader extends StatelessWidget {
  final String productImage;
  final String priceDiscount;
  const CartHeader({
    super.key,
    required this.productImage,
    required this.priceDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 237, 229, 229),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
          child: Image(
            image: AssetImage(productImage),
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            height: 19,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              priceDiscount,
              style: const TextStyle(fontSize: 10),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 5,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_sharp,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
