import 'package:flutter/material.dart';

import '../../constants/values.dart';
import '../../screens/main/main_screen.dart';
import '../../helpers/responsive.dart';

import 'widgets/achievements.dart';
import 'widgets/hight_lights_info.dart';
import 'widgets/home_banner.dart';
import 'widgets/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: <Widget>[
        const HomeBanner(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 2,
          ),
          child: Column(
            children: const [
              HightLightsInfo(),
              Projects(),
              Achievements(),
            ],
          ),
        ),
      ],
    );
  }
}
