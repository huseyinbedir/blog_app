import 'package:blog_app/feature/home/view/home_desktop.dart';
import 'package:blog_app/feature/home/view/home_page.dart';
import 'package:blog_app/feature/layout/layout_file.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Blog Ap",
      debugShowCheckedModeBanner: false,
      home: Layouts(
        desktopApp: HomeDesktop(),
        mobileApp: HomePage(),
      ),
    );
  }
}
