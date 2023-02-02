import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(border: Border.all(width: 1.0, color: Colors.black26)),
      child: Hero(
        tag: 1,
        child: Image.asset('assets/images/image-1.jpeg', height: 260.h, fit: BoxFit.cover),
      ),
    );
  }
}
