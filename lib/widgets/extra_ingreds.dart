import 'package:flutter/material.dart';

Container makeExtras({foodItem, context}) {
  final extras = ["tomato", "honey", "cheese", "small_dog"];

  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [foodItem.firstColor, foodItem.secondColor],
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...extras.map(
          (image) => Column(
            children: [
              Image(
                image: AssetImage("assets/images/$image.png"),
                height: 50,
                width: 50,
              ),
              Icon(
                Icons.check_circle,
                size: 15,
                color: Colors.green[700],
              )
            ],
          ),
        )
      ],
    ),
  );
}
