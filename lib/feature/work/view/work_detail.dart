import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WorkDetail extends StatefulWidget {
  const WorkDetail({super.key});

  @override
  State<WorkDetail> createState() => _WorkDetailState();
}

class _WorkDetailState extends State<WorkDetail> {
  List list = [
    "https://www.zohowebstatic.com/sites/default/files/zoho_general_pages/zh-mobileapp.png",
    "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg",
    "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg",
    "https://miro.medium.com/max/910/1*qML0C4wyJu1kFbF0OJ3CiQ.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222222),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            closeButton(context),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    carousel(),
                    information(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Expanded information() {
    return Expanded(
      child: Container(
        color: const Color(0xff444444),
        height: 600,
        child: Column(
          children: [],
        ),
      ),
    );
  }

  Expanded carousel() {
    return Expanded(
      child: SizedBox(
        height: 600,
        child: CarouselSlider(
          options: CarouselOptions(),
          items: list
              .map((item) => Container(
                    color: Colors.green,
                    child: Center(child: Image.network(item.toString())),
                  ))
              .toList(),
        ),
      ),
    );
  }

  Container closeButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 50),
      alignment: Alignment.topRight,
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.cancel,
            size: 50,
            color: Color(0xfff5f5f5),
          )),
    );
  }
}
