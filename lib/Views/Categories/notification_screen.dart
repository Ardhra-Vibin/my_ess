import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';
class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(color: tG),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h/11,
                width: w,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.notifications_none,size: 40,),
                      SizedBox(width: 5,),
                      Text("Notifications",style: f25tG,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YESTERDAY,7:43PM",style: f15sG,),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ]
                      ),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                      color: primary,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("The worker is on the way to you",style: f15tGB,),
                                ],
                              ),
                              Icon(Icons.location_on,size: 30,color: primary,)

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YESTERDAY,7:43PM",style: f15sG,),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ]
                      ),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: green,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("The worker has reached you",style: f15tGB,),
                                ],
                              ),
                              Image.asset("assets/images/flag.png",height:25,color:Colors.green,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YESTERDAY,7:43PM",style: f15sG,),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ]
                      ),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: second,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("The worker has started",style: f15tGB,),
                                ],
                              ),
                              Icon(Icons.check_circle,size: 30,color: second,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YESTERDAY,7:43PM",style: f15sG,),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ]
                      ),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.pink,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("The work is done",style: f15tGB,),
                                ],
                              ),
                              Icon(Icons.check_circle,size: 30,color:Colors.pink,)

                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
