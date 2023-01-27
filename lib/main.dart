import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/pages/onboarding/onboarding_page.dart';

void main() {
  runApp(const Marketplace());
}

class Marketplace extends StatelessWidget {
  const Marketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        // Material Application.

        return application();
      },
    );
  }

  Widget application() => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const OnboardingPage(),
      );
}
