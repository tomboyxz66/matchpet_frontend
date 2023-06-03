import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newmatchpet/utility/my_style.dart';

Future<void> normalDialog(BuildContext context, String message) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(message),
      children: [
        FloatingActionButton(
          backgroundColor: MyStyle().backgroundColor,
          onPressed: () => Navigator.pop(context),
          child: Text(
            'OK',
            style: TextStyle(color: MyStyle().fontColor),
          ),
        )
      ],
    ),
  );
}
