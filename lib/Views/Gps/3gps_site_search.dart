import 'package:flutter/material.dart';
import 'file:///C:/Users/asus/AndroidStudioProjects/flutter_ess_app/lib/Views/Gps/2gps_detect_location.dart';

import '../widgets.dart';
import '4gps_location_detect.dart';

class GPS_SiteSearch extends StatefulWidget {
  @override
  _GPS_SiteSearchState createState() => _GPS_SiteSearchState();
}

class _GPS_SiteSearchState extends State<GPS_SiteSearch> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      //backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor:Colors.transparent,
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
                          Icon(Icons.arrow_back_ios_rounded,color: Colors.black,size: 20,),
                               Text("back",style: TextStyle(color:Colors.black),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:Colors.grey[100]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Your site is being searched for",
                              style: f15tG,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            // controller: email,
                            style: f15,
                            decoration: inputText("Country"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            //controller: email,
                            style: f15,
                            decoration: inputText("Boycott"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            //controller: email,
                            style: f15,
                            decoration: inputText("Neighborhood"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            //controller: email,
                            style: f15,
                            decoration: inputText("Zip Code"),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LocationDetect()));
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
            ),
          ),
        ],
      ),
    );
  }
}
