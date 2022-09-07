import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Mobile")),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: const Card(
                child: Padding(padding: EdgeInsets.all(10)),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: ((context, index) {
                      return SizedBox(
                          height: 80,
                          child: Card(
                            color: Colors.amber.shade300,
                          ));
                    })))
          ],
        ));
  }
}
