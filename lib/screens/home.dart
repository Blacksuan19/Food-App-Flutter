import 'package:flutter/material.dart';
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
              children: [
                ItemCard(
                  assetName: "pipes",
                  name: "Pipes Burger",
                  time: 10,
                  firstColor: Colors.yellow[100],
                  secondColor: Colors.yellow[200],
                ),
                ItemCard(
                  assetName: "chicken",
                  name: "Chicken Burger",
                  time: 15,
                  firstColor: Colors.red[100],
                  secondColor: Colors.grey[100],
                ),
                ItemCard(
                  assetName: "beef",
                  name: "Beef Burger",
                  time: 15,
                  firstColor: Colors.green[100],
                  secondColor: Colors.grey[100],
                ),
                ItemCard(
                  assetName: "dog",
                  name: "Hot Dog",
                  time: 15,
                  firstColor: Colors.yellow[200],
                  secondColor: Colors.red[100],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
