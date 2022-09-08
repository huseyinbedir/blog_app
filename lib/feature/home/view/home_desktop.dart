import 'dart:convert';
import 'dart:developer';
import 'dart:html';

import 'package:blog_app/core/cubit/navigation_cubit.dart';
import 'package:blog_app/core/navigation/router_const.dart';
import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:blog_app/production/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff0b7080), Color(0xff0ba376)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          image: DecorationImage(
            image: AssetImage(
              "assets/img/main_bg.png",
            ),
            repeat: ImageRepeat.repeat,
          )),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(child: contentRow(context)),
    ));
  }

  SizedBox contentRow(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 300,
      height: MediaQuery.of(context).size.height - 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff444444),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              height: 750,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  userCard(context),
                  Expanded(
                    flex: 1,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 5),
                      height: 750,
                      child: BlocBuilder<NavigationCubit, Widget>(
                          builder: (context, state) {
                        return state;
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          rightMenu(context),
        ],
      ),
    );
  }

  Column rightMenu(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          height: 350,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff444444)),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  menuItem(
                      context, "Home", MyIconsSet.home, RouterConst.homePage),
                  menuItem(
                      context, "Profile", MyIconsSet.user, RouterConst.profile),
                  menuItem(context, "Education", MyIconsSet.graduationHat,
                      RouterConst.education),
                  menuItem(
                      context, "Work", MyIconsSet.briefcase, RouterConst.work),
                  menuItem(context, "Blog", MyIconsSet.book, RouterConst.blog),
                  menuItem(context, "Contact", MyIconsSet.envelope,
                      RouterConst.contact),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  IconButton menuItem(
      BuildContext context, String tooltip, IconData icon, String root) {
    return IconButton(
        tooltip: tooltip,
        padding: const EdgeInsets.all(0),
        onPressed: () {
          BlocProvider.of<NavigationCubit>(context).changeToPage(root);
        },
        icon: Icon(
          icon,
          size: 26,
          color: BlocProvider.of<NavigationCubit>(context, listen: true)
                      .rootName ==
                  root
              ? Colors.tealAccent
              : const Color(0xffafb0b1),
        ));
  }
}
