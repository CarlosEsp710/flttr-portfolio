import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class InfoText extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(subtitle),
        ],
      ),
    );
  }
}
