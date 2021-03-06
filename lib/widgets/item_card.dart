import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String assetName;
  final String name;
  final int time;
  final Color firstColor;
  final Color secondColor;
  const ItemCard({
    Key key,
    this.assetName,
    this.name,
    this.time,
    this.firstColor,
    this.secondColor,
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
          colors: [firstColor, secondColor],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("assets/images/burgers/$assetName.png"),
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
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
                      "$time Min",
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
