import 'package:flutter/material.dart';
import 'package:navigation_system/views/screens/coffee/coffee_two_screen.dart';

class CoffeeOneScreen extends StatelessWidget {
  static const route = "/";

  const CoffeeOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Coffee One Screen"),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  await Navigator.pushNamed(context, CoffeeTwoScreen.route);
                },
                child: const Text("Coffee Two"))
          ],
        ),
      ),
    );
  }
}
