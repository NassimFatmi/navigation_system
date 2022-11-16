import 'package:flutter/material.dart';
import 'package:navigation_system/views/screens/book/book_one_screen.dart';
import 'package:navigation_system/views/screens/book/book_two_screen.dart';

class BookNavigator extends StatelessWidget {
  static final GlobalKey<NavigatorState> bookNavigator =
      GlobalKey<NavigatorState>();
  const BookNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: bookNavigator,
      onGenerateRoute: (settings) => MaterialPageRoute(
        settings: settings,
        builder: (context) {
          switch (settings.name) {
            case BookOneScreen.route:
              return const BookOneScreen();
            case BookTwoScreen.route:
              return const BookTwoScreen();
            default:
              return const BookOneScreen();
          }
        },
      ),
    );
  }
}
