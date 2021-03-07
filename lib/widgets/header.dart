import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Padding makeHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Food Delivery",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "B-46 Bhgyoday society",
              style:
                  GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
        SizedBox(height: 30),
        makeTextField(),
      ],
    ),
  );
}
