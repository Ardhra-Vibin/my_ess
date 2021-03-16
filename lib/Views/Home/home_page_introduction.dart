import 'package:flutter/material.dart';

import '../widgets.dart';
import '../widgets.dart';

class HomePageIntroduction extends StatefulWidget {
  @override
  _HomePageIntroductionState createState() => _HomePageIntroductionState();
}

class _HomePageIntroductionState extends State<HomePageIntroduction> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/logo.jpg",
                height: 200,
                width: 200,
              ),
              height: height,
              width: width,
              //fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        'Show text here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      ),
                      SizedBox(height: 500,),
                      MaterialButton(
                          height: 45,
                          minWidth: MediaQuery.of(context).size.width-30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          color: white,
                          splashColor: primary,
                          onPressed: (){},
                          child: Padding(
                            padding: const EdgeInsets.only(left:10,right: 10),
                            child: Text("GPS Now"),
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
