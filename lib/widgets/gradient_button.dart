import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/widgets.dart';

class GradientButton extends StatelessWidget {
  final Function onTap;
  final String label;
  const GradientButton({
    Key key,
    this.onTap,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 50,
        decoration: makeGradient(
          firstColor: Colors.yellow,
          secondColor: Colors.yellow[200],
          radius: 20,
          vertical: true,
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
