import 'package:flutter/material.dart';
import 'package:navigation_system/views/screens/coffee/coffee_one_screen.dart';
import 'package:navigation_system/views/screens/coffee/coffee_two_screen.dart';

class CoffeeNavigator extends StatelessWidget {
  static final GlobalKey<NavigatorState> coffeeNavigator =
      GlobalKey<NavigatorState>();
  const CoffeeNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: coffeeNavigator,
      onGenerateRoute: (settings) => MaterialPageRoute(
        settings: settings,
        builder: (context) {
          switch (settings.name) {
            case CoffeeOneScreen.route:
              return const CoffeeOneScreen();
            case CoffeeTwoScreen.route:
              return const CoffeeTwoScreen();
            default:
              return const CoffeeOneScreen();
          }
        },
      ),
    );
  }
}
