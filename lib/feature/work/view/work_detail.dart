import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkDetail extends StatefulWidget {
  final Map detail;
  const WorkDetail({
    Key? key,
    required this.detail,
  }) : super(key: key);

  @override
  State<WorkDetail> createState() => _WorkDetailState();
}

class _WorkDetailState extends State<WorkDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222222),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(
                builder: (context, constant) {
                  if (constant.maxWidth < 1200) {
                    return mobilePreview(context);
                  }
                  return desktopPreview(context);
                },
              )),
        ));
  }

  Column mobilePreview(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        closeButton(context),
        const SizedBox(
          height: 30,
        ),
        carousel(),
        information(),
      ],
    );
  }

  Widget desktopPreview(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        closeButton(context),
        const SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            carousel2(),
            const SizedBox(
              width: 20,
            ),
            information2(),
          ],
        ),
      ],
    );
  }

  Container information() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff444444),
      child: projectInformation(),
    );
  }

  Container information2() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 400,
      height: 600,
      color: const Color(0xff444444),
      child: projectInformation(),
    );
  }

  Column projectInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "${widget.detail['name']}",
          style: const TextStyle(color: Colors.white, fontSize: 19),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.link,
              color: Color(0xff04b4e0),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                _launchUrl(widget.detail['url']);
              },
              child: const Text(
                "Uygulama",
                style: TextStyle(
                  color: Color(0xff04b4e0),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.date_range,
              color: Color(0xff04b4e0),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "20.02.2022",
              style: TextStyle(
                color: Color(0xffd5d5d5),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "${widget.detail['description']}",
          style: const TextStyle(color: Color(0xffd5d5d5)),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Kullanılan Teknolojiler",
          style: TextStyle(color: Color(0xfff5f5f5), fontSize: 15),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${widget.detail['techology']}",
          style: const TextStyle(color: Color(0xffd5d5d5)),
        ),
      ],
    );
  }

  SizedBox carousel() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: carouselSlide(),
    );
  }

  SizedBox carousel2() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: carouselSlide(),
    );
  }

  CarouselSlider carouselSlide() {
    List image = widget.detail['image'] as List;
    return CarouselSlider(
      options: CarouselOptions(autoPlay: true),
      items: image
          .map((item) => Image.asset(
                item.toString(),
                fit: BoxFit.cover,
              ))
          .toList(),
    );
  }

  Container closeButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 50),
      alignment: Alignment.topRight,
      child: IconButton(
          color: Colors.blue,
          splashRadius: 100,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.cancel,
            size: 20,
            color: Color(0xfff5f5f5),
          )),
    );
  }

  Future<void> _launchUrl(url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}
