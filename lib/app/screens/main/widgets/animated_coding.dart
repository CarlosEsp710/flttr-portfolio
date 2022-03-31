import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class AnimatedCoding extends StatelessWidget {
  final String title;
  final double percentage;

  const AnimatedCoding({
    Key? key,
    required this.title,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) {
          return Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          );
        },
      ),
    );
  }
}
