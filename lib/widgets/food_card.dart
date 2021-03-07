import 'package:flutter/material.dart';
import 'package:food_app_ui/models/models.dart';
import 'package:food_app_ui/widgets/widgets.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    @required this.foodItem,
  }) : super(key: key);

  final Food foodItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.all(20),
      decoration: makeGradient(
        firstColor: foodItem.firstColor,
        secondColor: foodItem.secondColor,
        radius: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivers in",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 14,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "${foodItem.time} Min",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.red[300],
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                    text: foodItem.price.toString(),
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "  \$",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          Hero(
            tag: foodItem.name,
            child: Image(
              image:
                  AssetImage("assets/images/burgers/${foodItem.assetName}.png"),
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          ItemCount(
            fontSize: 20,
            horPadding: 15,
            verPadding: 10,
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
