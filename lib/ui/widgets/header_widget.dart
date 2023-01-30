import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  final Widget widget;

  const HeaderWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Logotype (Text).
        const HeaderLogotype(),

        // Widget: Icon.
        widget,
      ],
    );
  }
}

class HeaderLogotype extends StatelessWidget {
  const HeaderLogotype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'A.',
      style: TextStyle(fontSize: 26.r, fontWeight: FontWeight.bold),
    );
  }
}
