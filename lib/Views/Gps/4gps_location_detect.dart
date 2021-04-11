import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Categories/categories2.dart';
import 'package:flutter_ess_app/Views/Categories/categories_screen.dart';
import 'package:flutter_ess_app/Views/Login/bottom_navigation_bar_screen.dart';

import '../widgets.dart';
import '3gps_site_search.dart';
class LocationDetect extends StatefulWidget {
  @override
  _LocationDetectState createState() => _LocationDetectState();
}

class _LocationDetectState extends State<LocationDetect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: fG,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor:fG,
      //   leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
      //   title: Text("back",style: TextStyle(color:Colors.black),),
      //   titleSpacing: 0,
      // ),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/locationmap.png",
                fit: BoxFit.cover,
              )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 12,left: 12,right: 12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30,top: 12),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                          Text("back",style: TextStyle(color:Colors.black),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 350,
                    width: MediaQuery.of(context).size.width-30,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12,top: 20),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Your location has been determined successfully",
                            textAlign: TextAlign.center,
                            style: f15tG,),
                          SizedBox(height: 10,),
                          Image.asset("assets/images/gps_success.png",width: 100,height: 100,),
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
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 80,),
                  Padding(
                    padding: EdgeInsets.only(left: 8,right: 8,top: MediaQuery.of(context).size.height/6),
                    child: MaterialButton(
                      height: 45,
                      minWidth: MediaQuery.of(context).size.width-30,
                      color: primary,
                      splashColor: second,
                      colorBrightness: Brightness.light,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text("Confirm",style: f15W,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
