import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../animations/fade_animation.dart';

class OnboardingLowerPanel extends StatelessWidget {
  const OnboardingLowerPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      intervalEnd: 0.4,
      child: Row(
        children: <Widget>[
          // Picture.
          const LowerPanelPicture(),
          SizedBox(width: 8.w),

          // Title Text.
          const LowerPanelTitle(),
        ],
      ),
    );
  }
}

class LowerPanelPicture extends StatelessWidget {
  const LowerPanelPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/images/flash.svg');
  }
}

class LowerPanelTitle extends StatelessWidget {
  const LowerPanelTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Started', style: TextStyle(fontSize: 12.r));
  }
}
