import 'package:ecommerce_app/components/my_drawer.dart';
import 'package:ecommerce_app/components/my_product_tile.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  static const String id = 'shop_page';
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          elevation: 0,
          title: const Text(
            'Shop Page',
          ),
          actions: [
            // go to cart
            IconButton(
              onPressed: () => Navigator.pushNamed(context, CartPage.id),
              icon: const Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
          ],
          centerTitle: true,
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(
              height: 25.0,
            ),
            // shop title

            // shop subtitle
            const Center(
                child: Text('Pick from a selected list of premium products')),

            // product list
            SizedBox(
              height: 550.0,
              child: ListView.builder(
                  padding: const EdgeInsets.all(15.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    // getting each individual product from shop
                    final product = products[index];

                    // return as a product UI
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
