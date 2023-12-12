import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home_screen.dart';
import 'package:t_store/features/shop/screens/home/widgets/circle_shape.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 150,
                  color: TColors.primary,
                  child: Stack(
                    children: [
                      const CircleShape(top: -140, right: -180),
                      const CircleShape(top: 80, right: -200),
                      Align(
                        alignment: const Alignment(0, -0.5),
                        child: ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(image: AssetImage(TImages.user)),
                          ),
                          title: Text(
                            "John Smith",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          subtitle: Text(
                            "Johnsmith@gamil.com",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.edit),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Settings",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    accountSettingListTile(context,
                        title: "My Address",
                        icon: Iconsax.home,
                        subtitle: "Manage Your Address",
                        onTap: () {}),
                    accountSettingListTile(context,
                        title: "My Carts",
                        icon: Iconsax.shopping_cart,
                        subtitle: "Manage Your Carts",
                        onTap: () {}),
                    accountSettingListTile(context,
                        title: "My Orders",
                        icon: Iconsax.bag_tick,
                        subtitle: "Manage Your Orders",
                        onTap: () {}),
                    accountSettingListTile(context,
                        title: "My Accounts",
                        icon: Iconsax.bank,
                        subtitle: "Manage Your Accounts",
                        onTap: () {}),
                    accountSettingListTile(context,
                        title: "My Coupons",
                        icon: Iconsax.discount_shape,
                        subtitle: "Manage Your Coupons",
                        onTap: () {}),
                    accountSettingListTile(context,
                        title: "My Notifications",
                        icon: Iconsax.notification,
                        subtitle: "Manage Your Notifications",
                        onTap: () {}),
                    accountSettingListTile(context,
                        title: "Account Privacy",
                        icon: Iconsax.security_card,
                        subtitle: "Manage Your Privacy",
                        onTap: () {}),
                    Text(
                      "App Settings",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    accountSettingListTile(context,
                        title: "Load Data",
                        icon: Iconsax.document,
                        subtitle: "Manage Your Loaded Data",
                        onTap: () {}),
                    ListTile(
                      leading: const Icon(Iconsax.setting),
                      title: const Text(
                        "Settings",
                      ),
                      subtitle: Text(
                        "Manage Your Settings",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: Switch(value: true, onChanged: (value) {}),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile accountSettingListTile(BuildContext context,
      {required String title,
      required IconData icon,
      required VoidCallback onTap,
      required String subtitle}) {
    return ListTile(
      onTap: () {},
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
