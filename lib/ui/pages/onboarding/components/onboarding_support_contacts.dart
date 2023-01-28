import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../animations/fade_animation.dart';
import '../../../animations/slide_animation.dart';

class OnboardingSupportContacts extends StatelessWidget {
  const OnboardingSupportContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      begin: const Offset(0, 20),
      intervalStart: 0.6,
      child: FadeAnimation(
        intervalStart: 0.6,
        // Content.

        child: content(),
      ),
    );
  }

  Widget content() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Support Text.
          const SupportText(),

          // Icon: Binance.
          binance(),

          // Icon: Huobi.
          huobi(),

          // Icon: Xrp.
          xrp(),
        ],
      );

  Widget binance() => SvgPicture.asset('assets/images/binance.svg', width: 24.r);

  Widget huobi() => SvgPicture.asset('assets/images/huobi.svg', width: 22.r);

  Widget xrp() => SvgPicture.asset('assets/images/xrp.svg', width: 22.r);
}

class SupportText extends StatelessWidget {
  const SupportText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Supported by',
      style: TextStyle(fontSize: 14.r, fontFamily: 'Dsignes', color: Colors.black),
    );
  }
}
