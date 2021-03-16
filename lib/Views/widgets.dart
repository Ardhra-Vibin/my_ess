import 'package:flutter/material.dart';

Color primary = Color(0xFF005691);
Color second = Color(0xFF05E8B2);
Color white = Color(0xFFFFFFFF);
Color fG = Color(0xFFDFDFDF);
Color sG = Color(0xFFAFBCCA);
Color tG = Color(0xFF515C6F);
Color green= Color(0xFF569100);

TextStyle f15 = TextStyle(
    fontSize: 15,
);
TextStyle f15tG = TextStyle(
    fontSize: 15,
    color: tG
);
TextStyle f15W = TextStyle(
  fontSize: 15,
  color: white
);
TextStyle f15sG = TextStyle(
  fontSize: 15,
    color: sG
);
TextStyle f11sG = TextStyle(
  fontSize: 11,
  color: sG
);
BoxDecoration cont1 = BoxDecoration(
    color: fG,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50)
    )
);