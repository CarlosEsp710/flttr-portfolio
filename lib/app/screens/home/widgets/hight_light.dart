import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class HightLight extends StatelessWidget {
  final Widget counter;
  final String label;

  const HightLight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
