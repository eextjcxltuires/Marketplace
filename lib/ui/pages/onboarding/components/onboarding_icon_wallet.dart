import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingIconWallet extends StatelessWidget {
  const OnboardingIconWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.r,
      height: 40.r,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: const Center(child: Icon(Iconsax.wallet_1, color: Colors.white)),
    );
  }
}
