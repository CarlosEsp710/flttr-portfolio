import 'package:flutter/material.dart';

import '../../../constants/values.dart';
import '../../../models/achievement.dart';

import 'achievement_card.dart';

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Achievements',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoAchievements.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: AchievementCard(
                    achievement: demoAchievements[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
