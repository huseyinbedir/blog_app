import 'package:flutter/cupertino.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key, required this.mobileApp, required this.desktopApp});

  final Widget mobileApp;
  final Widget desktopApp;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrait) {
        if (constrait.maxWidth < 1000) {
          return mobileApp;
        } else {
          return desktopApp;
        }
      },
    );
  }
}
