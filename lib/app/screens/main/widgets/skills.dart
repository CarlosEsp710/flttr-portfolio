import 'package:flutter/material.dart';

import '../../../constants/values.dart';

import 'animated_skill.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const <Widget>[
            Expanded(
              child: AnimatedSkill(
                title: 'Laravel',
                percentage: 0.85,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedSkill(
                title: 'Flutter',
                percentage: 0.9,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedSkill(
                title: 'React',
                percentage: 0.65,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
