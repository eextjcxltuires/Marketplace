import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../animations/fade_animation.dart';
import '../../../animations/slide_animation.dart';

class DetailDescriptionSection extends StatelessWidget {
  const DetailDescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      intervalStart: 0.4,
      begin: const Offset(0, 30.0),
      child: FadeAnimation(
        intervalStart: 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('DAY 74', style: TextStyle(fontSize: 24.r, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.h),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset('assets/images/profile.jpg', width: 20.r),
                ),
                SizedBox(width: 8.h),
                const Text('@pashabetenya', style: TextStyle(color: Colors.black54)),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              'Who we were and what we will become are there, there are around us, they are batting, they are resting and they are being watched..  More description text.',
              style: TextStyle(fontSize: 15.r, color: Colors.black87),
            ),
            SizedBox(height: 8.h),
            const Divider(color: Colors.black54),
            SizedBox(height: 8.h),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/user.jpeg',
                  width: 40.r,
                  height: 40.r,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text('Highest Bid Placed By'),
              subtitle: Text(
                'Merry Rose',
                style: TextStyle(color: Colors.black, fontSize: 16.r, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                '15.97 ETH',
                style: TextStyle(color: Colors.black, fontSize: 16.r, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16.h),
            const ButtonPrice(),
          ],
        ),
      ),
    );
  }
}

class ButtonPrice extends StatelessWidget {
  const ButtonPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Place Bid',
            style: TextStyle(fontSize: 16.r, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            '20h: 35m: 08s',
            style: TextStyle(fontSize: 18.r, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
