import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventStateWidget extends StatelessWidget {
  final String title, subtitle;

  const EventStateWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Title.
      titleText(),

      // Subtitle.
      subtitleText(),
    ]);
  }

  Widget titleText() => Text(
        title,
        style: TextStyle(fontSize: 16.r, fontWeight: FontWeight.bold),
      );

  Widget subtitleText() => Text(
        subtitle,
        style: TextStyle(fontSize: 14.r, color: Colors.black54),
      );
}
