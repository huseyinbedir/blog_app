import 'package:blog_app/core/cubit/navigation_cubit.dart';
import 'package:blog_app/feature/home/view/home_desktop.dart';
import 'package:blog_app/feature/home/view/home_page.dart';
import 'package:blog_app/feature/layout/layout_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(create: (context) => NavigationCubit())
      ],
      child: MaterialApp(
        title: "Blog Ap",
        theme: ThemeData(fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: const Layouts(
          desktopApp: HomeDesktop(),
          mobileApp: HomePage(),
        ),
      ),
    );
  }
}
