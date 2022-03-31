import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/IMG_20200719_171040.jpg',
              ),
            ),
            const Spacer(),
            Text(
              'Carlos Espejel',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Text(
              'Backend Developer & Flutter Developer',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
