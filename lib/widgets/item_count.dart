import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCount extends StatelessWidget {
  final int fontSize;
  final int horPadding;
  final int verPadding;
  final int iconSize;

  const ItemCount({
    Key key,
    this.fontSize,
    this.horPadding,
    this.verPadding,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verPadding.toDouble(),
        horizontal: horPadding.toDouble(),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 5),
                child: Text(
                  "Large x ",
                  style: GoogleFonts.rubik(
                    fontSize: fontSize.toDouble(),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Text(
                  " 2 ",
                  style: GoogleFonts.rubik(
                      wordSpacing: 10,
                      fontWeight: FontWeight.bold,
                      fontSize: (fontSize - 2).toDouble()),
                ),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: iconSize.toDouble(),
          )
        ],
      ),
    );
  }
}
