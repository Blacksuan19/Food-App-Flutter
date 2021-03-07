import 'package:flutter/material.dart';

class Food {
  String name;
  String assetName;
  int price;
  int time;
  Color firstColor;
  Color secondColor;
  int imageWidth;
  int imageHeight;
  Food({
    this.name,
    this.assetName,
    this.price,
    this.time,
    this.firstColor,
    this.secondColor,
    this.imageWidth = 200,
    this.imageHeight = 80,
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
    imageHeight: 80,
    imageWidth: 80,
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
