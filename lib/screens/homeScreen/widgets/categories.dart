import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return buildCategory(index);
          },
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          selectedIndex == index
                              ? kTextColor
                              : kTextLightColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: kDefaultPaddin / 8,
                    ), //top padding 5
                    height: 2,
                    width: 30,
                    color:
                        selectedIndex == index
                            ? Colors.black
                            : Colors.transparent,
                  ),
                ],
              ),
            ),
          );
  }
}
