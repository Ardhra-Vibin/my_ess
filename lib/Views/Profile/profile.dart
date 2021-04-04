import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ess_app/Views/Profile/exchangearchive_screen.dart';
import 'package:flutter_ess_app/Views/Profile/profile_edit_screen.dart';
import 'package:flutter_ess_app/Views/Profile/settings_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';

class AddProfile extends StatefulWidget {
  @override
  _AddProfileState createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black38
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(MdiIcons.accountCircle,size: 25,),
                    SizedBox(width: 10,),
                    Text("Profile",style: f17tG,)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            blurRadius: 1,
                            spreadRadius: 1
                        )
                      ]
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    height:40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Image.asset("assets/images/GOPR2792.JPG",fit: BoxFit.cover,)),

                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text('Name Here',style: f15,),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(MdiIcons.emailOutline,size: 12,color: sG,),
                                      SizedBox(width: 5,),
                                      Text("Test@gmail.com",style: f11sG,)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.phone_in_talk_rounded,size: 12,color: sG,),
                                      SizedBox(width: 5,),
                                      Text("+123 123456789",style: f11sG)
                                    ],
                                  ),
                                ],
                              ),

                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEdit()));
                            },
                            child: Row(
                              children: [
                                Text("Edit",style: TextStyle(color: primary,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            blurRadius: 1,
                            spreadRadius: 1
                        )
                      ]
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ExchangeArchive()));
                            },
                            child: Row(
                              children: [
                                Icon(MdiIcons.textBoxMultipleOutline,color: tG,size: 17,),
                                SizedBox(width: 10,),
                                Text("Exchange archive",style: f12tGw500,)
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(MdiIcons.mapMarkerOutline,color: tG,size: 17),
                              SizedBox(width: 10,),
                              Text("Address",style: f12tGw500,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(Icons.payment,color: tG,size: 17),
                              SizedBox(width: 10,),
                              Text("Payment methods",style: f12tGw500,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                            },
                            child: Row(
                              children: [
                                Icon(MdiIcons.cogOutline,color: tG,size: 17),
                                SizedBox(width: 10,),
                                Text("Settings",style: f12tGw500,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            blurRadius: 1,
                            spreadRadius: 1
                        )
                      ]
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(MdiIcons.lightbulbOutline,color: tG,size: 17,),
                              SizedBox(width: 10,),
                              Text("Your opinion matters",style: f12tGw500,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(MdiIcons.shareVariant,color: tG,size: 17),
                              SizedBox(width: 10,),
                              Text("Share the app",style: f12tGw500,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(MdiIcons.lifebuoy,color: tG,size: 17),
                              SizedBox(width: 10,),
                              Text("Help",style: f12tGw500,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(MdiIcons.emoticonHappyOutline,color: tG,size: 17),
                              SizedBox(width: 10,),
                              Text("Privacy",style: f12tGw500,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8,right: 8,top: 20),
                  child: MaterialButton(
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width-30,
                    color: primary,
                    splashColor: second,
                    colorBrightness: Brightness.light,
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("Log out",style: f15W,),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
