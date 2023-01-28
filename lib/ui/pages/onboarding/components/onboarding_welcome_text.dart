import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../animations/fade_animation.dart';
import '../../../animations/slide_animation.dart';

class OnboardingWelcomeText extends StatelessWidget {
  const OnboardingWelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        // Part Text.
        FirstPartText(),

        // Part Text.
        SecondPartText(),
      ],
    );
  }
}

class FirstPartText extends StatelessWidget {
  const FirstPartText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: SlideAnimation(
        intervalEnd: 0.6,
        child: FadeAnimation(
          intervalEnd: 0.6,

          // List (Text).
          child: displayListText(),
        ),
      ),
    );
  }

  Widget displayListText() => RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Dsignes',
            color: Colors.black,
            fontSize: 40.r,
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
          children: const [
            TextSpan(text: 'Discover ', style: TextStyle(fontWeight: FontWeight.w200)),
            TextSpan(text: 'Rare \nCollections '),
            TextSpan(text: 'Of ', style: TextStyle(fontWeight: FontWeight.w200)),
          ],
        ),
      );
}

class SecondPartText extends StatelessWidget {
  const SecondPartText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: SlideAnimation(
        intervalEnd: 0.6,
        begin: const Offset(0, 30.0),
        child: FadeAnimation(
          intervalEnd: 0.6,
          child: Row(
            children: <Widget>[
              // Text.
              displayTextOne(),

              const ColoredText(text: 'NFTs.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget displayTextOne() => Text(
        'Art & ',
        style: TextStyle(
          fontSize: 40.r,
          fontWeight: FontWeight.bold,
          fontFamily: 'Dsignes',
          color: Colors.black,
          height: 1.3,
        ),
      );
}

class ColoredText extends StatelessWidget {
  const ColoredText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 10.w,
            child: Container(width: 85.w, height: 30.r, color: const Color(0xFFAAFAFF)),
          ),

          // Text.
          displayTextTwo(),
        ],
      ),
    );
  }

  Widget displayTextTwo() => Text(
        text,
        style: TextStyle(
          fontSize: 40.r,
          fontWeight: FontWeight.bold,
          fontFamily: 'Dsignes',
          color: Colors.black,
          height: 1.3,
        ),
      );
}
