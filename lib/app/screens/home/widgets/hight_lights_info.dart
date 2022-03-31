import 'package:flutter/material.dart';

import '../../../constants/values.dart';
import '../../../helpers/responsive.dart';

import 'animated_counter.dart';
import 'hight_light.dart';

class HightLightsInfo extends StatelessWidget {
  const HightLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding,
        horizontal: !Responsive.isMobileLarge(context) ? defaultPadding / 2 : 0,
      ),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    HightLight(
                      counter: AnimatedCounter(count: 30, text: '+'),
                      label: 'GitHub projects',
                    ),
                    HightLight(
                      counter: AnimatedCounter(count: 1, text: ''),
                      label: 'Social innovation project',
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    HightLight(
                      counter: AnimatedCounter(count: 10, text: '+'),
                      label: 'Courses taken',
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                HightLight(
                  counter: AnimatedCounter(count: 30, text: '+'),
                  label: 'GitHub projects',
                ),
                HightLight(
                  counter: AnimatedCounter(count: 1, text: ''),
                  label: 'Social innovation project',
                ),
                HightLight(
                  counter: AnimatedCounter(count: 10, text: '+'),
                  label: 'Courses taken',
                ),
              ],
            ),
    );
  }
}
