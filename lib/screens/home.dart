import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/app_bar.dart';
import 'package:food_app_ui/widgets/bottom_navbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeAppBar(
        leadingIcon: Image(
          image: AssetImage(
            "assets/images/menu-icon.png",
          ),
        ),
      ),
      bottomNavigationBar: makeBottomNav(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Food Delivery",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "B-46 Bhgyoday society",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 10),
                hintText: "Search items here...",
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
