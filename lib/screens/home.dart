import 'package:flutter/material.dart';
import 'package:food_app_ui/models/food.dart';
import 'package:food_app_ui/widgets/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFFF7),
      appBar: makeAppBar(
        leadingIcon: Image(
          image: AssetImage(
            "assets/images/menu-icon.png",
          ),
        ),
        context: context,
      ),
      bottomNavigationBar: NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            makeHeader(),
            SizedBox(height: 20),
            CategoryRow(),
            SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ...foods.map(
                  (food) => ItemCard(foodItem: food),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
