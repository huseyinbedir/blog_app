import 'package:flutter/material.dart';

Widget alertContainer(BuildContext context, String status, String description) {
  Map icons = {
    "danger": Icons.error,
    "success": Icons.check_circle,
    "warning": Icons.warning,
    "info": Icons.info
  };

  Color textColor = status == "danger"
      ? const Color(0xffFF3333)
      : status == "success"
          ? const Color(0xff00C247)
          : status == "warning"
              ? const Color(0xffFFAD33)
              : const Color(0xff004CE8);

  Color bgColor = status == "danger"
      ? const Color(0xffFFF5F5)
      : status == "success"
          ? const Color(0xffF6FDF8)
          : status == "warning"
              ? const Color(0xffFFFAF5)
              : const Color(0xffF6FAFD);
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(color: textColor),
      borderRadius: BorderRadius.circular(10),
      color: bgColor,
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Icon(
          icons[status],
          color: textColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            description,
            style: TextStyle(fontSize: 15, color: textColor),
          ),
        ),
      ],
    ),
  );
}

Future<void> showMessage(BuildContext context, Map map, {String? title}) async {
  await showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text(
            title ?? "Bilgi",
            style: TextStyle(
                color:
                    map['status'] == "danger" ? Colors.red : Colors.blueAccent),
          ),
          content: Text(map['description']),
        );
      });
}
