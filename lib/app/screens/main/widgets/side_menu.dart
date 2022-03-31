import 'package:flutter/material.dart';

import '../../../constants/values.dart';

import 'coding.dart';
import 'contact.dart';
import 'info_text.dart';
import 'knowledge.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: const <Widget>[
                  InfoText(
                    title: 'Residence',
                    subtitle: 'Michoacán',
                  ),
                  InfoText(
                    title: 'City',
                    subtitle: 'Zitácuaro',
                  ),
                  InfoText(
                    title: 'Age',
                    subtitle: '21',
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledge(),
                  Contact(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
