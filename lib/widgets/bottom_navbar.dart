import 'package:flutter/material.dart';

BottomNavigationBar makeBottomNav() {
  return BottomNavigationBar(
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
  );
}

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
