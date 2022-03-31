import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class AnimatedSkill extends StatelessWidget {
  final String title;
  final double percentage;

  const AnimatedSkill({
    Key? key,
    required this.title,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      '${(value * 100).toInt().toString()}%',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
