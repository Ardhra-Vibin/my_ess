import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Categories/notification_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';
import 'check_work_progress.dart';
class WorkProgress extends StatefulWidget {
  @override
  _WorkProgressState createState() => _WorkProgressState();
}

class _WorkProgressState extends State<WorkProgress> {
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 12, right: 12, top: 80,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(
                              "assets/images/GOPR2792.JPG",
                              fit: BoxFit.fill,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: white,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Name Here",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: white,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("location is here,the city",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                      },
                      icon:Icon(
                        Icons.notifications_none,color: white,size: 30,),

                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: h-220,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,bottom: 20,top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(MdiIcons.clockTimeThree,color: tG,),
                        SizedBox(width: 10,),
                        Text("Work in progress",style: f17tG,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckWorkProgress(img:"assets/images/GOPR2792.JPG")));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[100],
                                    blurRadius: 2,
                                    spreadRadius: 2
                                )
                              ]
                          ),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:BorderRadius.circular(10),
                                          child: Container(
                                            height: 63,
                                            width: 90,
                                            child: Image.asset("assets/images/GOPR2792.JPG",fit: BoxFit.fill,),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text("Flat Paint",style: f15tG,)
                                      ],
                                    ),
                                    Image.asset("assets/images/arrow_circle.png",height: 27,color: primary,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ),
          )

        ],
      ),
    );
  }
}
