import 'package:blog_app/core/helper/helper_widgets.dart';
import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30))),
      padding: const EdgeInsets.all(30),
      child: LayoutBuilder(
        builder: (context, constrant) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "İletişim",
                    style: TextStyle(
                        color: Color(0xfff5f5f5),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ])),
                constrant.maxWidth < 450
                    ? _mobilePreview(context)
                    : desktopPreview(context),
              ],
            ),
          );
        },
      ),
    );
  }

  _box(BuildContext context, IconData icon, String text) {
    return Container(
      width: 250,
      height: 100,
      color: const Color(0xff333333),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: const Color(0xff04b4e0),
            size: 25,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Color(0xffeeeeee),
                fontSize: 15,
                fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }

  Widget _mobilePreview(BuildContext context) {
    return Column(
      children: [
        boxContainer(context),
        const SizedBox(
          height: 40,
        ),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: "Bana Yaz",
            style: TextStyle(
                color: Color(0xfff5f5f5),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ])),
        const SizedBox(
          height: 10,
        ),
        form(),
      ],
    );
  }

  Widget desktopPreview(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        boxContainer(context),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Bana Yaz",
                  style: TextStyle(
                      color: Color(0xfff5f5f5),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ])),
              const SizedBox(
                height: 15,
              ),
              form(),
            ],
          ),
        )),
      ],
    );
  }

  Container boxContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          _box(context, MyIconsSet.mapMarker, "Kocaeli"),
          const SizedBox(
            height: 10,
          ),
          _box(context, MyIconsSet.envelope, "hsynbdr@gmail.com"),
        ],
      ),
    );
  }

  Column form() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: const TextStyle(color: Color(0xfff5f5f5)),
          decoration: const InputDecoration(
              hintText: "Ad Soyad",
              hintStyle: TextStyle(
                  color: Color(0xff999999), fontWeight: FontWeight.bold),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff999999), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff999999), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
            style: const TextStyle(color: Color(0xfff5f5f5)),
            decoration: const InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    color: Color(0xff999999), fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff999999), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff999999), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))))),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
            style: const TextStyle(color: Color(0xfff5f5f5)),
            maxLines: 8,
            decoration: const InputDecoration(
                hintText: "Mesaj",
                hintStyle: TextStyle(
                    color: Color(0xff999999), fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff999999), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff999999), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))))),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 50,
          width: 250,
          child: OutlinedButton(
            onPressed: () async {
              showMessage(
                  context,
                  {
                    "status": "danger",
                    "description":
                        "Halen geliştirme aşamasındayım , yakında bana yazabileceksin. Bunun yerine mail göndermeye ne dersin ?"
                  },
                  title: "Uyarı");
            },
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                  const BorderSide(color: Color(0xff04b4e0), width: 2)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: const Text(
              "Gönder",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
