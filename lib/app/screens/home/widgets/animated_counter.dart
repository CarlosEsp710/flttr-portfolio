import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class AnimatedCounter extends StatelessWidget {
  final String text;
  final int count;

  const AnimatedCounter({
    Key? key,
    required this.text,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: count),
      duration: defaultDuration,
      builder: (context, value, child) {
        return Text(
          '$value $text',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: primaryColor),
        );
      },
    );
  }
}
