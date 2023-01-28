import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.4,
      ),
      // Widget for display body (content page).

      body: body(),
    );
  }

  Widget body() => Center(
        child: Text('It is home page..', style: TextStyle(color: Colors.black, fontSize: 16.r)),
      );
}
