import 'package:blog_app/core/cubit/navigation_cubit.dart';
import 'package:blog_app/core/navigation/router_const.dart';
import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

Container userCard(context, {bool isMenu = false}) {
  return Container(
    width: 350,
    height: 750,
    padding: EdgeInsets.only(top: isMenu ? 20 : 50, bottom: 10),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          isMenu
              ? Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xffbbbbbb),
                      )),
                )
              : const SizedBox(),
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("assets/img/myimage.jpg"),
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
          isMenu ? _getMenu(context) : const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  Uri uri = Uri.parse(
                      "https://www.linkedin.com/in/h%C3%BCseyin-bedir-4b6880224/");
                  if (!await launchUrl(uri)) {}
                },
                icon: const Icon(
                  MyIconsSet.linkedin,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  MyIconsSet.facebook,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  MyIconsSet.twitter,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: OutlinedButton(
              onPressed: () async {
                Uri uri = Uri.parse("assets/cv/cv.pdf");
                if (!await launchUrl(uri)) {}
              },
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
            height: 150,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: const Text(
              "©2022 All rights reserved.",
              style: TextStyle(color: Color(0xffbbbbbb)),
            ),
          )
        ],
      ),
    ),
  );
}

_getMenu(context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Column(
      children: [
        _menuItem(context, "Anasayfa", RouterConst.homePage),
        const SizedBox(
          height: 10,
        ),
        _menuItem(context, "Profil", RouterConst.profile),
        const SizedBox(
          height: 10,
        ),
        _menuItem(context, "Eğitim", RouterConst.education),
        const SizedBox(
          height: 10,
        ),
        _menuItem(context, "Çalışma", RouterConst.work),
        const SizedBox(
          height: 10,
        ),
        _menuItem(context, "Blog", RouterConst.blog),
        const SizedBox(
          height: 10,
        ),
        _menuItem(context, "İletişim", RouterConst.contact),
      ],
    ),
  );
}

_menuItem(context, String buttonName, String root) {
  return ElevatedButton(
    onPressed: () {
      BlocProvider.of<NavigationCubit>(context).changeToPage(root);
      Navigator.pop(context);
    },
    style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(Colors.transparent)),
    child: Text(
      buttonName,
      style: TextStyle(
          color: BlocProvider.of<NavigationCubit>(context, listen: true)
                      .rootName ==
                  root
              ? Colors.teal
              : const Color(0xfff5f5f5)),
    ),
  );
}
