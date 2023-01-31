import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomIconWidget extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const BottomIconWidget({
    Key? key,
    required this.icon,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon),
        Divider(
          thickness: 2.0,
          indent: 25.w,
          endIndent: 25.w,
          color: isActive ? Colors.black : Colors.transparent,
        ),
      ],
    );
  }
}
