import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeDescriptionPanel extends StatelessWidget {
  const HomeDescriptionPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Live', style: TextStyle(fontSize: 16.r)),
            SizedBox(height: 10.h),
            Text('Auctions.', style: TextStyle(fontSize: 26.r, fontWeight: FontWeight.bold)),
            SizedBox(height: 2.h),
            Text(
              'Enjoy! The latest hot auctions',
              style: TextStyle(fontSize: 18.r, color: Colors.grey),
            ),
          ],
        ),
        const Icon(Iconsax.setting_4),
      ],
    );
  }
}
