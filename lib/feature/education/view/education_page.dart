import 'package:blog_app/core/ui/my_icons_set_icons.dart';
import 'package:blog_app/feature/education/view/timeline.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: "Eğitim",
                            style: TextStyle(
                                color: Color(0xfff5f5f5),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                        Timeline(
                          lineColor: const Color(0xffbbbbbb),
                          strokeWidth: 2,
                          indicators: const [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Color(0xff04b4e0),
                            ),
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Color(0xff04b4e0),
                            ),
                            Icon(
                              MyIconsSet.infinity,
                              size: 10,
                              color: Color(0xff04b4e0),
                            ),
                          ],
                          indicatorColor: const Color(0xffbbbbbb),
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              height: 90,
                              child: const Text(
                                  " 2019 - Deniz Yıldızları Anadolu Teknik Lisesi \n Bilgisayar Bölümü \n Web Tasarım Dalı",
                                  style: TextStyle(color: Color(0xffbbbbbb))),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              height: 90,
                              child: const Text(
                                  " 2021 - Sakarya Üniversitesi \n Uzaktan Eğitim Fakultesi \n Bilgisayar Programcılığı",
                                  style: TextStyle(color: Color(0xffbbbbbb))),
                            ),
                            const SizedBox(
                              child: Text(
                                  " 2022 - İstanbul Üniversitesi  Tarih",
                                  style: TextStyle(color: Color(0xffbbbbbb))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "Çalışma Hayatı",
                          style: TextStyle(
                              color: Color(0xfff5f5f5),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ])),
                      Timeline(
                        indicators: const [
                          Icon(
                            MyIconsSet.infinity,
                            size: 10,
                            color: Color(0xff04b4e0),
                          ),
                        ],
                        indicatorColor: const Color(0xffbbbbbb),
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            height: 90,
                            child: const Text(
                                " 2017 - İnternetten Teknoloji Ltd Şti \n Flutter Developer",
                                style: TextStyle(color: Color(0xffbbbbbb))),
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Sertifika",
                  style: TextStyle(
                      color: Color(0xfff5f5f5),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ])),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff444444)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 100,
                    width: 300,
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            color: Color(0xff444444),
                          ),
                          height: 100,
                          width: 80,
                          child: const Center(
                            child: Text("Butgem"),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Bursa Ticaret Odası",
                                style: TextStyle(color: Color(0xffbbbbbb)),
                              ),
                              Text(
                                "Yazılım Uzmanlığı",
                                style: TextStyle(color: Color(0xffbbbbbb)),
                              ),
                              Text(
                                "2017",
                                style: TextStyle(color: Color(0xffbbbbbb)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
