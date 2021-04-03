import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Gps/4gps_location_detect.dart';

import '../widgets.dart';
import '../widgets.dart';
import '2gps_detect_location.dart';

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
              //alignment: Alignment.center,
              child: Image.asset(
                "assets/images/gps_background.png",
                height: height,
                width: width,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        'Hi !',
                        style: f50WB,
                      ),
                      SizedBox(height: 50,),
                      Text("To be able to search for professional \nyou must activate it",
                        textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 20,
                          color: white,
                        ),),
                      SizedBox(height: 30,),
                      Text("GPS",style:f50WB),
                      SizedBox(height: 250,),
                      MaterialButton(
                          height: 45,
                          minWidth: MediaQuery.of(context).size.width-30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          color: white,
                          splashColor: primary,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetectLocation()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:10,right: 10),
                            child: Text("Activation GPS",style:f20Pw400 ,),
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
