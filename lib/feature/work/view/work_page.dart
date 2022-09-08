import 'package:blog_app/feature/work/view/work_detail.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
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
                  text: "Projeler",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ])),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 200,
                child: TabBar(
                  indicator: BoxDecoration(),
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text("Mobil"),
                    ),
                    Tab(
                      child: Text("Web"),
                    ),
                    Tab(
                      child: Text("Backend"),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  _mobileApp(context),
                  const Text("bbbb"),
                  const Text("ccc"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  _mobileApp(context) {
    List<Map> mobileApp = [
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
      }
    ];
    return GridView.extent(
        maxCrossAxisExtent: 130.0,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: mobileApp
            .map((el) => GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Card(
                    color: const Color(0xff444444),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(el['image']),
                              fit: BoxFit.fill)),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              el['name'],
                              style: const TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                              ),
                            )),
                      ),
                    ),
                  ),
                ))
            .toList());
  }

  void _showDialog(context) {
    showGeneralDialog(
      context: context,
      barrierColor: Color(0xff222222), // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return const WorkDetail();
      },
    );
  }
}
