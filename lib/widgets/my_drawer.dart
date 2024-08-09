import 'package:flutter/material.dart';
import 'package:food_panda/constants/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return icon == null
        ? ListTile(
            onTap: onTap,
            title: Text(text),
          )
        : ListTile(
            onTap: onTap,
            leading: Icon(
              icon,
              color: AppColors.mainColor,
            ),
            title: Text(text),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(builder: (c) {
            return DrawerHeader(
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  border: Border.all(color: AppColors.mainColor)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Text(
                        "N",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColors.mainColor),
                      ),
                    ),
                  ),
                  Text(
                    "Dear, Vanna Net",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            );
          }),
          Column(
            children: [
              listTile(
                context,
                "Voucher & Offers",
                Icons.local_offer_outlined,
                () {},
              ),
              listTile(
                context,
                "Favourites",
                Icons.favorite_outline_rounded,
                    () {},
              ),
              listTile(
                context,
                "Orders & reordering",
                Icons.my_library_books_outlined,
                    () {},
              ),
              listTile(
                context,
                "Addresses",
                Icons.location_on_outlined,
                    () {},
              ),
              listTile(
                context,
                "Payment Method",
                Icons.payment_rounded,
                    () {},
              ),
              listTile(
                context,
                "Help Center",
                Icons.help_center_outlined,
                    () {},
              ),
              listTile(
                context,
                "Invite Friend",
                Icons.wallet_giftcard_outlined,
                    () {},
              ),
              Divider(),
              listTile(
                context,
                "Setting",
                null,
                    () {},
              ),
              listTile(
                context,
                "Term & Conditions / Privacy",
                null,
                    () {},
              ),
              listTile(
                context,
                "Logout",
                null,
                    () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
