import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gradient_button.dart';

class CheckoutNavBar extends StatelessWidget {
  final String buttonLabel;
  final Function buttonOnTap;

  const CheckoutNavBar({
    Key key,
    this.buttonLabel,
    this.buttonOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rng = new Random();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Price",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                // rnadom number between 40 and 100
                (rng.nextDouble() * (100 - 40) + 40).toStringAsFixed(2) + "\$",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          GradientButton(label: buttonLabel, onTap: buttonOnTap),
        ],
      ),
    );
  }
}
