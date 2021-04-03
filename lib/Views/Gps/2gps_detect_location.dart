import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ess_app/Views/Categories/categories_screen.dart';
import 'package:flutter_ess_app/Views/Gps/3gps_site_search.dart';

import '../widgets.dart';
class DetectLocation extends StatefulWidget {
  @override
  _DetectLocationState createState() => _DetectLocationState();
}

class _DetectLocationState extends State<DetectLocation> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              //backgroundColor: Colors.grey[400],
              appBar: AppBar(
                backgroundColor: primary,
                elevation: 0,
              ),
              body: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/locationmap.png",
                        fit: BoxFit.cover,
                      )),
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 500  ,
                          color: primary,
                          child: SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.only(top:100,right: 15,left: 15 ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 86,left: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(8) ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Image.asset("assets/images/flag.png",height: 20,color: white,),
                        SizedBox(width: 10,),
                        Text("Detect Location",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          color: Colors.white
                        ),),
                      ],
                    )),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: primary),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      spreadRadius: 1,
                      blurRadius: 5,
                    )

                  ]
                ),
                height: 400,
                width: MediaQuery.of(context).size.width-30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12,top: 20),
                  child: Column(
                    children: [
                      Text("Your site is being searched for",style: f15tG,),
                      SizedBox(height: 10,),
                      Image.asset("assets/images/Loading_2.gif",width: 80,height: 80,),
                      SizedBox(height: 20,),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:Color(0xFFF6F6F6),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color:fG),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("The location is here,the city,36005",style:f15tG, ),
                                Text("Edit",style: TextStyle(color: primary,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ) ,),
                        ),
                      SizedBox(height: 20,),
                      Text("If you encounter problems locating the site,you can Click on ""Edit"" and your site manualy",
                        textAlign: TextAlign.center,
                        style: f15sG,
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(child: Image.asset("assets/images/refresh.png",
                            color: primary,height: 20,))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8,right: 8,top: MediaQuery.of(context).size.height/6),
                child: MaterialButton(
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  color: primary,
                  splashColor: second,
                  colorBrightness: Brightness.light,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GPS_SiteSearch()));
                    },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("Confirm",style: f15W,),
                ),
              ),
            ],
          ),

        ],

      ),
    );
  }
}
