import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import '../../../constants/values.dart';
import '../../../helpers/responsive.dart';

import 'flutter_code_text.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodeText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text('I code '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'responsive web and mobile apps.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'fast and secure servers.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'integration with google services.',
                speed: const Duration(milliseconds: 60),
              ),
            ],
          ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context))
            const FlutterCodeText(tag: '</'),
        ],
      ),
    );
  }
}
