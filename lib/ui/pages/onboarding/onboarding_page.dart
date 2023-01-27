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

            // Header.
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: OnboardingHeader(),
            ),
            SizedBox(height: 40.h),

            // Lower Panel.
            const OnboardingLowerPanel(),
            SizedBox(height: 16.h),

            // Welcome Text.
            const OnboardingWelcomeText(),
            SizedBox(height: 24.h),

            // Description Text.
            const OnboardingDescriptionText(),
          ],
        ),
      ),
    );
  }
}
