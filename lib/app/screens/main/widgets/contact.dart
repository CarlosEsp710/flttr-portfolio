import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/values.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: defaultPadding),
          child: TextButton(
            onPressed: () async => await launch(curriculumPath),
            child: FittedBox(
              child: Row(
                children: [
                  Text(
                    'DOWNLOAD CV',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                  const SizedBox(width: defaultPadding / 2),
                  SvgPicture.asset('assets/icons/download.svg'),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: const Color(0xFF24242E),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Spacer(),
              IconButton(
                icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                onPressed: () async => await launch(ulrLinkedIn),
              ),
              IconButton(
                icon: SvgPicture.asset('assets/icons/github.svg'),
                onPressed: () async => await launch(urlGitHub),
              ),
              IconButton(
                icon: SvgPicture.asset('assets/icons/twitter.svg'),
                onPressed: () async => await launch(urlTwitter),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
