import 'package:flutter/material.dart';

BottomNavigationBar makeBottomNav() {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      makeItem(assetName: "home"),
      makeItem(assetName: "star"),
      makeItem(assetName: "cart"),
      makeItem(assetName: "profile"),
    ],
  );
}

BottomNavigationBarItem makeItem({assetName}) {
  return BottomNavigationBarItem(
    label: "",
    icon: Image(
      image: AssetImage("assets/images/$assetName.png"),
    ),
  );
}
