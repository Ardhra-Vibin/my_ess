import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Login/walkththrough.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
        ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/images/esslogo_white.png",height: 200,width: 200,)),
             SizedBox(height: 200,),
              Align(
                alignment: Alignment.bottomCenter,
                  child: Text("Made With Love ""just example""",style: f15W,))
            ],
          ),
        ),
      ),

    );
  }
}
