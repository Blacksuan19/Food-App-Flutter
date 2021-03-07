import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

AppBar makeAppBar({leadingIcon, context, isBack = false}) {
  return AppBar(
    backgroundColor: Color(0xFFFAFFF7),
    leading: Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: IconButton(
        // hide annoying ripple effect
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        mouseCursor: SystemMouseCursors.click, // change mouse to pointer
        hoverColor: Colors.transparent,
        enableFeedback: false,
        icon: leadingIcon,
        onPressed: () => isBack ? Navigator.pop(context) : {},
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
    elevation: 0,
  );
}
