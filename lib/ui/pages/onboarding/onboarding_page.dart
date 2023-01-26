import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/onboarding_description_text.dart';
import 'components/onboarding_header.dart';
import 'components/onboarding_welcome_text.dart';
import 'components/onboarding_lower_panel.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: OnboardingHeader(),
            ),
            SizedBox(height: 40.h),
            const OnboardingLowerPanel(),
            SizedBox(height: 16.h),
            const OnboardingWelcomeText(),
            SizedBox(height: 24.h),
            const OnboardingDescriptionText(),
          ],
        ),
      ),
    );
  }
}
