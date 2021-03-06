import 'package:flutter/material.dart';

AppBar makeAppBar({leadingIcon}) {
  return AppBar(
    foregroundColor: Color(0xFFFAFFF7),
    leading: Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: IconButton(
        icon: leadingIcon,
        onPressed: () => {},
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 10, right: 20),
        child: CircleAvatar(
          child: Image(
            image: AssetImage("assets/images/avatar.png"),
          ),
        ),
      )
    ],
    backgroundColor: Colors.white,
    elevation: 0,
  );
}
