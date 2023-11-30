import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({
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
