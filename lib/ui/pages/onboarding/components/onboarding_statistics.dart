import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../animations/page_transition.dart';
import '../../../animations/slide_animation.dart';
import '../../../animations/fade_animation.dart';
import '../../../widgets/event_state_widget.dart';
import '../../home/home_page.dart';

class OnboardingStatistics extends StatelessWidget {
  const OnboardingStatistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Event State.
        const DisplayEventState(),
        SizedBox(width: 60.w),

        // Discover Art Work.
        const DiscoverArtWorkBox(),
      ],
    );
  }
}

class DisplayEventState extends StatelessWidget {
  const DisplayEventState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      intervalStart: 0.4,
      begin: const Offset(0, 20.0),
      child: FadeAnimation(
        intervalStart: 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            // Widget: Art Work.
            EventStateWidget(
              title: '12.1K+',
              subtitle: 'Art Work',
            ),

            // Widget: Artist.
            EventStateWidget(
              title: '1.7M+',
              subtitle: 'Artist',
            ),

            // Widget: Auction.
            EventStateWidget(
              title: '45K+',
              subtitle: 'Auction',
            ),
          ],
        ),
      ),
    );
  }
}

class DiscoverArtWorkBox extends StatelessWidget {
  const DiscoverArtWorkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SlideAnimation(
        intervalStart: 0.2,
        child: FadeAnimation(
          intervalEnd: 0.2,
          child: Container(
            padding: EdgeInsets.all(24.r),
            decoration: const BoxDecoration(color: Color(0xFFE6D9FE)),
            // Content.

            child: content(),
          ),
        ),
      ),
    );
  }

  Widget content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Icon.
          const NextIcon(),
          SizedBox(height: 24.h),

          // Discover Artist Text.
          const DiscoverArtworkText(),
          SizedBox(height: 12.h),

          // Line.
          line(),
        ],
      );

  Widget line() => Divider(
        thickness: 2.0,
        endIndent: 120.w,
        color: Colors.black,
      );
}

class NextIcon extends StatelessWidget {
  const NextIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 40.r,
        height: 40.r,
        decoration: const BoxDecoration(color: Color(0xFFCAB2FF)),
        child: const Icon(Iconsax.arrow_right_1),
      ),
      // Transition.

      onTap: () => home(context),
    );
  }

  // Navigation: The function responsible for navigating to the Home Page.
  void home(context) => Navigator.push(
        context,
        PageTransition(child: const HomePage(), type: PageTransitionType.fadeIn),
      );
}

class DiscoverArtworkText extends StatelessWidget {
  const DiscoverArtworkText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Discover \nArtwork',
      style: TextStyle(
        fontSize: 24.r,
        height: 1.3,
        fontWeight: FontWeight.bold,
        letterSpacing: 9.0,
      ),
    );
  }
}
