import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle HeadLine(context) {
  //var height = MediaQuery.of(context).size.height;
  var wight = MediaQuery.of(context).size.width;
  //var orientation = MediaQuery.of(context).orientation;

  if (wight < 700) {
//Mobile_App
    return const TextStyle(
      color: Colors.black,
      fontSize: 34,
      fontWeight: FontWeight.w600,
    );
  } else {
    //Desktop/Web
    return const TextStyle(
      color: Colors.green,
      fontSize: 65,
      fontWeight: FontWeight.w600,
    );
  }
}
