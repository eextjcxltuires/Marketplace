import 'package:flutter/material.dart';

// Animates the child.
// Using TweenAnimationBuilder.

class FadeAnimation extends StatelessWidget {
  // Animate from value.
  /// [default value 0]
  final double begin;

  // Animate to value.
  /// [default value 1]
  final double end;

  // Animation Duration.
  /// [default is 750ms]
  final Duration duration;

  // Animation delay.
  /// [default is 0]
  final double intervalStart;

  // Animation delay.
  /// [default is 1]
  final double intervalEnd;

  // Animation Curve.
  /// [default is Curves.fastOutSlowIn]
  final Curve curve;

  // This widget, will be animated.
  final Widget child;

  const FadeAnimation({
    Key? key,
    required this.child,
    this.begin = 0,
    this.end = 1.0,
    this.intervalStart = 0,
    this.intervalEnd = 1.0,
    this.duration = const Duration(milliseconds: 3000),
    this.curve = Curves.fastOutSlowIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: begin, end: end),
      curve: Interval(intervalStart, intervalEnd, curve: curve),
      duration: duration,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(opacity: value!, child: child);
      },
      child: child,
    );
  }
}