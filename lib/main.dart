import 'package:flutter/material.dart';

void main() {
  runApp(const Marketplace());
}

class Marketplace extends StatelessWidget {
  const Marketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
