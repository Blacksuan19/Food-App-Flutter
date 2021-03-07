import 'package:flutter/material.dart';

class Food {
  String name;
  String assetName;
  double price;
  int time;
  Color firstColor;
  Color secondColor;
  Food({
    this.name,
    this.assetName,
    this.price,
    this.time,
    this.firstColor,
    this.secondColor,
  });
}

List<Food> foods = [
  Food(
    assetName: "pipes",
    name: "Pipes Burger",
    price: 15,
    time: 10,
    firstColor: Colors.yellow[100],
    secondColor: Colors.yellow[200],
  ),
  Food(
    assetName: "chicken",
    name: "Chicken Burger",
    price: 15,
    time: 15,
    firstColor: Colors.red[100],
    secondColor: Colors.grey[100],
  ),
  Food(
    assetName: "beef",
    name: "Beef Burger",
    price: 15,
    time: 15,
    firstColor: Colors.green[100],
    secondColor: Colors.grey[100],
  ),
  Food(
    assetName: "dog",
    name: "Hot dog",
    price: 15,
    time: 15,
    firstColor: Colors.yellow[200],
    secondColor: Colors.red[100],
  )
];
