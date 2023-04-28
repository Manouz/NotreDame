import 'package:flutter/material.dart';
import 'package:aprilproject/parents/Vue/MobileScreen.dart';
import 'package:aprilproject/parents/Vue/TabletScreen.dart';
import 'package:aprilproject/parents/Vue/desktopScreen.dart';

class ResponsiveLayouts extends StatelessWidget {
  const ResponsiveLayouts(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return MobileScaffold();
        } else if (constraints.maxWidth < 1100) {
          return TabletScaffold();
        } else {
          return DesktopScaffold();
        }
      },
    );
  }
}
