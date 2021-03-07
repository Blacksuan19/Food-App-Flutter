import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/models/models.dart';
import 'package:food_app_ui/screens/screens.dart';
import 'package:food_app_ui/widgets/checkout_navbar.dart';
import 'package:food_app_ui/widgets/widgets.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeAppBar(
        leadingIcon: Icon(Icons.keyboard_arrow_left),
        context: context,
        isBack: true,
      ),
      bottomNavigationBar: CheckoutNavBar(
        buttonLabel: "Checkout",
        buttonOnTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Home(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Orders",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ...foods.map(
                (food) => FoodCheckoutCard(food: food),
              )
            ],
          ),
        ),
      ),
    );
  }
}
