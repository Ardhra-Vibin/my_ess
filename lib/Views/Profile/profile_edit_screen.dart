import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
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
                Card(
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            hintStyle: f11sG,
                            hintText: "First Name"
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              hintStyle: f11sG,
                              hintText: "Last Name"
                          ),
                        ),


                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
