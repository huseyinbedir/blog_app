import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:flutter/material.dart';

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
      child: contentRow(),
    ));
  }

  Row contentRow() {
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
                  child: SizedBox(
                    height: 600,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: Color(0xff222222),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        rightMenu(),
      ],
    );
  }

  Container userCard() {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [],
      ),
    );
  }

  Column rightMenu() {
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
                  menuItem("Home", MyIconsSet.home, "home"),
                  menuItem("Profile", MyIconsSet.user, "home"),
                  menuItem("Education", MyIconsSet.graduationHat, "home"),
                  menuItem("Work", MyIconsSet.briefcase, "home"),
                  menuItem("Blog", MyIconsSet.book, "home"),
                  menuItem("Contanct", MyIconsSet.envelope, "home"),
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

  IconButton menuItem(String tooltip, IconData icon, String root) {
    return IconButton(
        tooltip: tooltip,
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        icon: Icon(
          icon,
          size: 30,
          color: const Color(0xffafb0b1),
        ));
  }
}