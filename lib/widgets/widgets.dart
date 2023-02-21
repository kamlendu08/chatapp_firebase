//import 'dart:js';

import 'package:flutter/material.dart';

final textInputDecoration = InputDecoration(
  labelStyle: const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
  ),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(50)),
  // ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFee7b64), width: 2),
    borderRadius: BorderRadius.circular(50.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFee7b64), width: 2),
    borderRadius: BorderRadius.circular(50.0),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2),
    borderRadius: BorderRadius.circular(50.0),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}
