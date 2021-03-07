import 'package:flutter/material.dart';

import 'package:food_app_ui/models/models.dart';

class ItemCard extends StatelessWidget {
  final Food foodItem;
  const ItemCard({
    Key key,
    this.foodItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      clipBehavior: Clip.hardEdge,
      width: 120,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [foodItem.firstColor, foodItem.secondColor],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image:
                AssetImage("assets/images/burgers/${foodItem.assetName}.png"),
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem.name,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(height: 2),
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
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
