import 'package:flutter/material.dart';

class BlogDetailPage extends StatelessWidget {
  final int id;
  const BlogDetailPage({super.key, required this.id});

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
        padding: const EdgeInsets.all(8),
        child: Column(
          children: const [Text("Blog")],
        ),
      ),
    );
  }
}
