import 'package:flutter/material.dart';

import '../../../constants/values.dart';

import 'knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(label: 'Flutter / Dart'),
        const KnowledgeText(label: 'HTML, CSS, SASS'),
        const KnowledgeText(label: 'Bootstrap, Tailwind'),
        const KnowledgeText(label: 'C++'),
        const KnowledgeText(label: 'PHP / Laravel'),
        const KnowledgeText(label: 'Java'),
        const KnowledgeText(label: 'Git / GitHub'),
        const KnowledgeText(label: 'Firebase, AWS'),
        const KnowledgeText(label: 'React, VUE, Svelte'),
        const KnowledgeText(label: 'Node.js'),
        const KnowledgeText(label: 'MySQL, SQL, MongoDB'),
      ],
    );
  }
}
