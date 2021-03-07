import 'package:flutter/material.dart';

makeGradient({firstColor, secondColor, radius, vertical = false}) {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(radius.toDouble())),
    gradient: LinearGradient(
      begin: vertical ? Alignment.topCenter : Alignment.topLeft,
      end: vertical ? Alignment.bottomCenter : Alignment.bottomRight,
      colors: [firstColor, secondColor],
    ),
  );
}
