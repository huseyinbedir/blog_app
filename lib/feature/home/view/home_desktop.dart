import 'package:blog_app/core/cubit/navigation_cubit.dart';
import 'package:blog_app/core/navigation/router_const.dart';
import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 150),
      child: contentRow(context),
    ));
  }

  Row contentRow(BuildContext context) {
    return Row(
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
            height: 600,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                userCard(),
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 5),
                    height: 600,
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
    );
  }

  Container userCard() {
    return Container(
      width: 300,
      height: 800,
      padding: const EdgeInsets.only(top: 50, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/img/main_photo.jpg"),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Hüseyin Bedir",
                  style: TextStyle(
                      color: Color(0xfff5f5f5),
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                      wordSpacing: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(color: Color(0xffbbbbbb), fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      MyIconsSet.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      MyIconsSet.twitter,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      MyIconsSet.linkedin,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white, width: 2)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Cv Görüntüle",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "©2022 All rights reserved.",
              style: TextStyle(color: Color(0xffbbbbbb)),
            )
          ],
        ),
      ),
    );
  }

  Column rightMenu(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
                      context, "Home", MyIconsSet.home, RouterConst.profile),
                  menuItem(
                      context, "Profile", MyIconsSet.user, RouterConst.profile),
                  menuItem(context, "Education", MyIconsSet.graduationHat,
                      RouterConst.profile),
                  menuItem(context, "Work", MyIconsSet.briefcase,
                      RouterConst.profile),
                  menuItem(
                      context, "Blog", MyIconsSet.book, RouterConst.profile),
                  menuItem(context, "Contact", MyIconsSet.envelope,
                      RouterConst.profile),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 250,
        )
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
          size: 30,
          color: const Color(0xffafb0b1),
        ));
  }
}
