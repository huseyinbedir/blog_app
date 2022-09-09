import 'package:blog_app/core/cubit/navigation_cubit.dart';
import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:blog_app/production/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: const Color(0xff444444),
          child: userCard(context, isMenu: true),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const SizedBox(),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff444444),
                          ),
                          child: const Icon(MyIconsSet.textAlignLeft))),
                );
              },
            )
          ],
        ),
        backgroundColor: const Color(0xff222222),
        body: BlocBuilder<NavigationCubit, Widget>(
          builder: (context, state) => state,
        ));
  }
}
