import 'package:flutter/material.dart';

class CoffeeTwoScreen extends StatelessWidget {
  static const route = "/coffee-two";

  const CoffeeTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Coffee Two Screen"),
      ),
    );
  }
}
