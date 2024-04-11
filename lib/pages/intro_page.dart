import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  static const String id = 'intro_page';
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25.0,
            ),

            // title
            const Text(
              'Minimal Shop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            // subtitle
            Text(
              'Premium Quality Products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25.0),

            // button
            MyButton(
              onTap: () {
                Navigator.pushNamed(context, ShopPage.id);
              },
              child: const Icon(Icons.forward),
            ),
          ],
        ),
      ),
    );
  }
}
