import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class FlutterCodeText extends StatelessWidget {
  final String tag;

  const FlutterCodeText({
    Key? key,
    this.tag = '<',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: tag,
        children: const [
          TextSpan(
            text: 'flutter',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
