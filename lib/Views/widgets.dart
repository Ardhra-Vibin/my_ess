import 'package:flutter/material.dart';

Color primary = Color(0xFF005691);
Color second = Color(0xFF05E8B2);
Color white = Color(0xFFFFFFFF);
Color fG = Color(0xFFDFDFDF);
Color sG = Color(0xFFAFBCCA);
Color tG = Color(0xFF515C6F);
Color green= Color(0xFF569100);

TextStyle f20Pw400 = TextStyle(
    color: primary,
    fontSize: 20,
    fontWeight: FontWeight.w400
);
TextStyle f50WB = TextStyle(
  fontSize: 50,
  color: white,
  fontWeight: FontWeight.bold
);
//added Bold
TextStyle f17P = TextStyle(
  fontSize: 15,
  color: primary,
    fontWeight: FontWeight.bold

);

TextStyle f18WB = TextStyle(
    fontSize: 17,
    color: Colors.white,
    fontWeight: FontWeight.bold
);


TextStyle f17WB = TextStyle(
  fontSize: 15,
  color: Colors.white,
  fontWeight: FontWeight.bold
);
TextStyle f17tG = TextStyle(
  fontSize: 17,
  color: tG,
);

TextStyle f25tG = TextStyle(
  fontSize: 25,
  color: tG,
);

TextStyle f21tG = TextStyle(
  fontSize: 21,
  color: tG,
);

TextStyle fappbar = TextStyle(
  color: tG,
);


TextStyle f15 = TextStyle(
    fontSize: 15,
);
TextStyle f15B = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold
);



TextStyle f15BB = TextStyle(
    fontSize: 15,
    color: primary,
    fontWeight: FontWeight.bold
);

TextStyle f15tG = TextStyle(
    fontSize: 15,
    color: tG
);

TextStyle f15tGB = TextStyle(
    fontSize: 15,
    color: tG,
    fontWeight: FontWeight.bold
);
TextStyle f15W = TextStyle(
  fontSize: 15,
  color: white
);

TextStyle f14W = TextStyle(
    fontSize: 14,
    color: white
);

TextStyle f14 = TextStyle(
    fontSize: 14,
);

TextStyle f14wB = TextStyle(
  fontSize: 14,
    color: white,
  fontWeight: FontWeight.w500
);

TextStyle f12 = TextStyle(
  fontSize: 12,
  color: Colors.grey[400]
);

TextStyle f14g = TextStyle(
    fontSize: 14,
    color: Colors.grey[500]
);

TextStyle f15sG = TextStyle(
  fontSize: 15,
    color: sG
);
TextStyle f12tGw500 = TextStyle(
    fontSize: 12,
    color: tG,
  fontWeight: FontWeight.w500
);


TextStyle f11sG = TextStyle(
  fontSize: 11,
  color: sG
);
BoxDecoration cont1 = BoxDecoration(
    color: Colors.grey[100],
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),

    )
);
InputDecoration inputText(String hintText){
    return InputDecoration(
        hintText: hintText,
        hintStyle: f11sG,
        fillColor: white,
        filled: true,
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.transparent)
      ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.transparent)
        )
    );
}
InputDecoration inputTextProfile(String hintText){
  return InputDecoration(
      hintText: hintText,
      hintStyle: f11sG,
      fillColor: Colors.grey[100],
      filled: true,
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent)
      )
  );
}

