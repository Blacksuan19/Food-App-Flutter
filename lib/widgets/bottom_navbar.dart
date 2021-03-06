import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  BottomNavigationBarItem makeItem({assetName, size}) {
    return BottomNavigationBarItem(
      label: "",
      icon: IconButton(
        icon: Image(
          image: AssetImage("assets/images/$assetName.png"),
          height: size ?? 16,
          width: size ?? 16,
        ),
        onPressed: () => {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFBFBFB),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.grey[600], Colors.white],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            makeItem(assetName: "home"),
            makeItem(assetName: "star"),
            // the icon is smaller so pass larger size to fit with others
            makeItem(assetName: "cart", size: 20.0),
            makeItem(assetName: "profile"),
          ],
          iconSize: 15,
        ),
      ),
    );
  }
}
