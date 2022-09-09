import 'package:blog_app/core/helper/helper_widgets.dart';

import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  BlogPage({super.key});

  final List<Map> mobileApp = [
    {
      "name": "B2b Project",
      "image":
          "https://www.zohowebstatic.com/sites/default/files/zoho_general_pages/zh-mobileapp.png"
    },
    {
      "name": "B2b Project",
      "image": "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg"
    },
    {
      "name": "B2b Project",
      "image": "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg"
    },
    {
      "name": "B2b Project 22",
      "image": "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg"
    },
    {
      "name": "B2b Project",
      "image": "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg"
    },
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
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: "Blog",
                style: TextStyle(
                    color: Color(0xfff5f5f5),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ])),
            const SizedBox(
              height: 20,
            ),
            alertContainer(context, "info", "Henüz Bir Yazı Paylaşılmamış")
            /*Expanded(
              child: GridView.extent(
                  shrinkWrap: true,
                  maxCrossAxisExtent: 360.0,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: mobileApp
                      .map((el) => GestureDetector(
                            onTap: () {
                              BlocProvider.of<NavigationCubit>(context)
                                  .changeToPageDetail(RouterConst.blog,
                                      RouterConst.blogDetail, 1);
                            },
                            child: Card(
                              color: const Color(0xff444444),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(el['image']),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      color: const Color(0xff444444),
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "20.02.2022",
                                                style: TextStyle(
                                                    color: Color(0xffaaaaaa),
                                                    fontSize: 13),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                el['name'] +
                                                    "asdasdasda asdasd asdasdasd ",
                                                style: const TextStyle(
                                                  color: Color(0xffeeeeee),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList()),
            )*/
          ],
        ),
      ),
    );
  }
}
