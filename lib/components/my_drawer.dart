import 'package:ecommerce_app/components/my_list_tile.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // drawer header: logo
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // shop tile
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // cart tile
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  // first pop the drawer
                  Navigator.pop(context);

                  // then goto Cart
                  Navigator.pushNamed(context, CartPage.id);
                },
              ),
            ],
          ),

          // exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  IntroPage.id,
                  (route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
