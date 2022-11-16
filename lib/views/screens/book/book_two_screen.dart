import 'package:flutter/material.dart';

class BookTwoScreen extends StatelessWidget {
  static const route = "/book-two";

  const BookTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Book Two Screen"),
      ),
    );
  }
}
