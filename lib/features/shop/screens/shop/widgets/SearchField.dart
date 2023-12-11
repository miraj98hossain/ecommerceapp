import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

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
