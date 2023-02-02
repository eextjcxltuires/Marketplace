import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        SizedBox(width: 16.h),
        Text('Auctions', style: TextStyle(fontSize: 16.r, fontWeight: FontWeight.bold)),
        const Spacer(),
        Icon(Iconsax.heart5, color: Colors.red.shade400),
        SizedBox(width: 15.h),
        const Icon(Iconsax.menu_1),
      ],
    );
  }
}
