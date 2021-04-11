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

  List countryCodes = [
    {"code":"+91","image":"assets/images/india.png"},
    {"code":"+971","image":"assets/images/uae.png"},
    {"code":"+123","image":"assets/images/america.png"}
  ];
  var codee;


  @override
  void initState(){
    super.initState();
    setState(() {
      codee = countryCodes[1]["code"];
    });
  }



  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        iconTheme: IconThemeData(color: tG),
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
                                    Icon(Icons.phone_in_talk,size: 12,color: sG,),
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
                          controller: email,
                          style: f15,
                          decoration: inputTextProfile("FirstName"),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          controller: email,
                          style: f15,
                          decoration: inputTextProfile("Last Name"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100],

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:150,
                                child: TextField(
                                  controller: email,
                                  style: f15,
                                  decoration: inputTextProfile("Test@gmail.com"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Text("Edit",style: TextStyle(color: primary,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 87,
                                    alignment: Alignment.center,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                          height: 52,
                                          child: DropdownButton(
                                              isExpanded: true,
                                              value: codee,
                                              iconEnabledColor: Colors.grey[400],
                                              iconSize: 20,
                                              elevation: 16,
                                              style: TextStyle(color: Colors.black),
                                              underline: Container(height: 0,),
                                              onChanged: (newValue){
                                                setState(() {
                                                  codee = newValue;
                                                });
                                                print("Country code" + codee);
                                              },
                                              items:countryCodes.map((item){
                                                return DropdownMenuItem(
                                                    value: item["code"],
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 8,),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(item["image"],height:20,),
                                                              SizedBox(width: 2,),
                                                              Text(item["code"],style: f15,),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ));
                                              }).toList()
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    color: Colors.grey[300],
                                    height: 52,),

                                  Container(
                                    width:MediaQuery.of(context).size.width-200,
                                    child: TextField(
                                      style: f15,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(horizontal: 6),
                                          border: InputBorder.none,
                                          hintText: "(123) 4 5 6 - 7 8 9 0",
                                          hintStyle:f11sG
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Text("Edit",style: TextStyle(color: primary,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100],

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:150,
                                child: TextField(
                                  controller: email,
                                  style: f15,
                                  decoration: inputTextProfile("* * * * * * * * * * * * * * * * * *"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Text("Edit",style: TextStyle(color: primary,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8,right: 8,top: 80),
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
                    child: Text("Save",style: f15W,),
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
