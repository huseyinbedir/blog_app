import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Hüseyin Bedir",
            style: TextStyle(
                color: Color(0xfff5f5f5),
                fontWeight: FontWeight.w900,
                fontSize: 55),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
                color: Color(0xffbbbbbb),
                fontSize: 20,
                fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
