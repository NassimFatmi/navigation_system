import 'package:flutter/material.dart';
import 'package:navigation_system/views/screens/book/book_two_screen.dart';

class BookOneScreen extends StatelessWidget {
  static const route = "/";
  const BookOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Book One Screen"),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  await Navigator.pushNamed(context, BookTwoScreen.route);
                },
                child: const Text("Book Two"))
          ],
        ),
      ),
    );
  }
}
