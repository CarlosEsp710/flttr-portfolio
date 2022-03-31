import 'package:flutter/material.dart';

import '../../../constants/values.dart';

import 'animated_coding.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedCoding(
          title: 'Dart',
          percentage: 0.9,
        ),
        const AnimatedCoding(
          title: 'JavaScript',
          percentage: 0.9,
        ),
        const AnimatedCoding(
          title: 'PHP',
          percentage: 0.80,
        ),
        const AnimatedCoding(
          title: 'Java',
          percentage: 0.50,
        ),
        const AnimatedCoding(
          title: 'MySQL',
          percentage: 0.75,
        ),
      ],
    );
  }
}
