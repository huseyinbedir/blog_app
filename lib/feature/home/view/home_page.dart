import 'package:blog_app/core/cubit/navigation_cubit.dart';
import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Container(
                padding: const EdgeInsets.all(50),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff444444),
                    ),
                    child: const Icon(MyIconsSet.textAlignLeft)))
          ],
        ),
        backgroundColor: const Color(0xff222222),
        body: BlocBuilder<NavigationCubit, Widget>(
          builder: (context, state) => state,
        ));
  }
}
