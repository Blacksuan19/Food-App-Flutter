import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryRow extends StatelessWidget {
  Container makeCategory({assetName, isSelected = false}) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: isSelected
          ? BoxDecoration(
              color: Color(0xFFFBFBFB),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.yellow[200].withOpacity(0.5),
                  Colors.red[100].withOpacity(0.5),
                ],
              ),
            )
          : BoxDecoration(),
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/images/$assetName.png"),
            height: 60,
            width: 60,
          ),
          Text(
            // capitalize the first letter
            assetName[0].toUpperCase() + assetName.substring(1),
            style: GoogleFonts.rubik(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          makeCategory(assetName: "pizza"),
          makeCategory(assetName: "burger", isSelected: true),
          makeCategory(assetName: "taco"),
          makeCategory(assetName: "cupcake"),
          makeCategory(assetName: "pasta"),
        ],
      ),
    );
  }
}
