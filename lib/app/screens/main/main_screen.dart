import 'package:flutter/material.dart';

import '../../constants/values.dart';
import '../../helpers/responsive.dart';

import 'widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;

  const MainScreen({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  );
                },
              ),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (Responsive.isDesktop(context))
                const Expanded(
                  // (2 + 7  = 9) so 2/9 = 0.22, means 22% of the screen width
                  flex: 2,
                  child: SideMenu(),
                ),
              if (Responsive.isDesktop(context))
                const SizedBox(width: defaultPadding),
              Expanded(
                // (2 + 7 = 9) so 7/9 = 0.77, means 77% of the screen width
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ...children,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
