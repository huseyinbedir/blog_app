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
          padding: const EdgeInsets.only(top: 50, left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(children: [
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
                      "1993 Gebze’de doğdum. Lise eğitimimi bilişim teknolojileri alanı, web tasarım dalında yaptım. Askerlik görevimden sonra freelancer olarak web tasarımı ve backend api konularında çalıştım. Web ve mobil yazılım konularında kendimi geliştirdim. Sunucu yönetimi socket ve node serverlar ile mobil ve web tabanlı uygulamalar geliştirdim. Kendimi mobil yazılım üzerinde ileri seviyeye getirmek için geliştirmeye çalışmaktayım",
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
                    padding: const EdgeInsets.all(0),
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
