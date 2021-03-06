import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  Column makeCategory({assetName}) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/images/$assetName.png"),
          height: 60,
          width: 60,
        ),
        Text(
          // capitalize the first letter
          assetName[0].toUpperCase() + assetName.substring(1),
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey[500]),
        )
      ],
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
          makeCategory(assetName: "burger"),
          makeCategory(assetName: "taco"),
          makeCategory(assetName: "cupcake"),
          makeCategory(assetName: "pasta"),
        ],
      ),
    );
  }
}
