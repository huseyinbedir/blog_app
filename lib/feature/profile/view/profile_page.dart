import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<String> language = [
    "assets/img/node.png",
    "assets/img/flutter.png",
    "assets/img/php.png",
    "assets/img/react.png",
    "assets/img/dart.png",
    "assets/img/sql.png"
  ];

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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "# ",
                  style: TextStyle(
                      color: Color(0xff04b4e0),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "Hakkımda",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ])),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(color: Color(0xffbbbbbb)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "# ",
                    style: TextStyle(
                        color: Color(0xff04b4e0),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Yetenekler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(
                height: 0,
              ),
              SizedBox(
                  height: 110,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 50),
                        child: Image.asset(
                          language[index],
                          width: 80,
                        ),
                      );
                    },
                    itemCount: language.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  )),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "# ",
                    style: TextStyle(
                        color: Color(0xff04b4e0),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Hobiler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      "Kamp , Doğa ve Balık Avı Tutkunu",
                      style: TextStyle(color: Color(0xffbbbbbb)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
