import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product_model.dart';
import 'package:online_shop_app/screens/DetailsScreen/widgets/add_to_cart.dart';
import 'package:online_shop_app/screens/DetailsScreen/widgets/color_and_size.dart';
import 'package:online_shop_app/screens/DetailsScreen/widgets/counter_with_fav_btn.dart';
import 'package:online_shop_app/screens/DetailsScreen/widgets/description.dart';
import 'package:online_shop_app/screens/DetailsScreen/widgets/product_title_with_image.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"),
          ),
          const SizedBox(width: kDefaultPaddin / 2),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(height: kDefaultPaddin / 2),
                        Description(product: product),
                        const SizedBox(height: kDefaultPaddin / 2),
                        CounterWithFavBtn(),
                        const SizedBox(height: kDefaultPaddin / 2),
                        AddToCart(product: product,)
                      ],
                    ),
                  ),
                ProductTitleWithImage(product: product,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
