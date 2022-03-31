import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../constants/values.dart';

class KnowledgeText extends StatelessWidget {
  final String label;

  const KnowledgeText({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: <Widget>[
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: defaultPadding / 2),
          Text(
            label,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
