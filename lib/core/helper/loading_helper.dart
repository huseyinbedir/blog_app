import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loading() {
  return SizedBox(
    height: 100,
    width: 100,
    child: Lottie.asset(
      "assets/lottie/loading.json",
      fit: BoxFit.fill,
      height: 50,
      width: 50,
    ),
  );
}
