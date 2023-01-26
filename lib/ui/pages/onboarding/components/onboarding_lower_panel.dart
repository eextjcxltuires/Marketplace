import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/animations/fade_animation.dart';

class OnboardingLowerPanel extends StatelessWidget {
  const OnboardingLowerPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: FadeAnimation(
        intervalEnd: 0.4,
        child: Row(
          children: <Widget>[
            SvgPicture.asset('assets/images/flash.svg'),
            SizedBox(width: 8.w),
            Text(
              'Started',
              style: TextStyle(fontSize: 12.r),
            ),
          ],
        ),
      ),
    );
  }
}
