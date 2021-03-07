import 'package:flutter/material.dart';
import 'package:food_app_ui/models/models.dart';

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [foodItem.firstColor, foodItem.secondColor],
        ),
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
          Container(
            padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Large x ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    " 2 ",
                    style: TextStyle(
                        wordSpacing: 10,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
