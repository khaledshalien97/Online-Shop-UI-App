import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product_model.dart';
import 'package:online_shop_app/screens/DetailsScreen/details_screen.dart';
import 'package:online_shop_app/screens/homeScreen/widgets/categories.dart';
import 'package:online_shop_app/screens/homeScreen/widgets/itemcard.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        CategoryList(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return ItemCard(
                  product: products[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index],)),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  
  }
}
