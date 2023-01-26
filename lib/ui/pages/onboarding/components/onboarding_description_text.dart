import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/animations/fade_animation.dart';

class OnboardingDescriptionText extends StatelessWidget {
  const OnboardingDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: FadeAnimation(
        intervalEnd: 0.6,
        child: Text(
          'Digital marketplace for crypto-collectibles, and non-fungible tokens NFTS.',
          style: TextStyle(
            fontSize: 16.r,
            fontFamily: 'Dsignes',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
