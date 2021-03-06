import 'package:flutter/material.dart';

TextField makeTextField() {
  return TextField(
    decoration: InputDecoration(
      fillColor: Colors.white70,
      filled: true,
      contentPadding: EdgeInsets.only(left: 10, top: 10),
      hintText: "Search items here...",
      hintStyle: TextStyle(
        color: Colors.grey[400],
        fontSize: 12,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[100],
        ),
        borderRadius: BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[100],
        ),
        borderRadius: BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        onPressed: () => {},
      ),
    ),
  );
}
