import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_system/views/navigation/book_navigator.dart';
import 'package:navigation_system/views/navigation/coffee_navigator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<GlobalKey<NavigatorState>> _navigators = [
    BookNavigator.bookNavigator,
    CoffeeNavigator.coffeeNavigator
  ];
  Future<bool> _systemBackButtonPressed() async {
    if (_navigators[_currentIndex].currentState!.canPop()) {
      _navigators[_currentIndex]
          .currentState!
          .pop(_navigators[_currentIndex].currentContext);
    } else {
      if (_currentIndex != 0) {
        setState(() {
          _currentIndex = 0;
        });
      } else {
        await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Book"),
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: "Coffee"),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: const [BookNavigator(), CoffeeNavigator()],
        ),
      ),
    );
  }
}
