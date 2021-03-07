import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_app_ui/models/models.dart';
import 'package:food_app_ui/widgets/widgets.dart';

class FoodCheckoutCard extends StatelessWidget {
  const FoodCheckoutCard({
    Key key,
    @required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    final rng = new Random();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: makeGradient(
        firstColor: food.firstColor,
        secondColor: food.secondColor,
        radius: 20,
        vertical: true,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image:
                      AssetImage("assets/images/burgers/${food.assetName}.png"),
                  width: 100,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      food.extras,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.red[300],
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 5),
                    ItemCount(
                      fontSize: 12,
                      horPadding: 5,
                      verPadding: 5,
                      iconSize: 20,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${(food.price * 2 + rng.nextDouble() * 3).toStringAsFixed(2)}\$",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
