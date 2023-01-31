import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/onboarding_icon_wallet.dart';
import 'components/onboarding_support_contacts.dart';
import 'components/onboarding_statistics.dart';
import 'components/onboarding_description_text.dart';
import '../../widgets/header_widget.dart';
import 'components/onboarding_welcome_text.dart';
import 'components/onboarding_lower_panel.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50.h),

                // Header.
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  // Widget: Icon Wallet.

                  child: HeaderWidget(widget: OnboardingIconWallet()),
                ),
                SizedBox(height: 40.h),

                // Lower Panel.
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: OnboardingLowerPanel(),
                ),
                SizedBox(height: 16.h),

                // Welcome Text.
                const OnboardingWelcomeText(),
                SizedBox(height: 24.h),

                // Description Text.
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: OnboardingDescriptionText(),
                ),
                SizedBox(height: 40.h),

                // Statistics.
                Container(
                  height: 200.h,
                  padding: const EdgeInsets.fromLTRB(40.0, 0, 0, 0),
                  child: const OnboardingStatistics(),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),

          // Support Contacts.
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 25.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: OnboardingSupportContacts(),
            ),
          ),
        ],
      ),
    );
  }
}
