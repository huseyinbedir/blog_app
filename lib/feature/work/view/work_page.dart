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
              const Expanded(
                child: TabBarView(children: [
                  Text("bbbb"),
                  Text("bbbb"),
                  Text("ccc"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
