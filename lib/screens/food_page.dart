import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_app_ui/models/models.dart';
import 'package:food_app_ui/screens/screens.dart';
import 'package:food_app_ui/widgets/widgets.dart';

class FoodPage extends StatelessWidget {
  final Food foodItem;
  const FoodPage({
    Key key,
    this.foodItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeAppBar(
        leadingIcon: Icon(Icons.keyboard_arrow_left),
        context: context,
        isBack: true,
      ),
      bottomNavigationBar: CheckoutNavBar(
        buttonLabel: "Add to cart",
        buttonOnTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Checkout(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            color: Color(0xFFFAFFF7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        foodItem.name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FoodCard(foodItem: foodItem),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Additional Ingredients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                makeExtras(
                  foodItem: foodItem,
                  context: context,
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
