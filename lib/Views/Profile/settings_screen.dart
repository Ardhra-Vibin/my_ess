import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool isSwitched = true;
  int langId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: tG),
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8,bottom: 8,right: 12,left: 12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Icon(MdiIcons.cogOutline,color: tG,size: 20),
                      SizedBox(width: 10,),
                      Text("Settings",style: f17tG,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ) ,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(MdiIcons.bellOutline,color: tG,size: 17),
                            SizedBox(width: 10,),
                            Text("Notices",style: f15tG,)
                          ],
                        ),
                        Row(
                          children: [
                            Transform.scale(
                              scale: .6,
                              child: CupertinoSwitch(
                                value: isSwitched,
                                onChanged: (value){
                                  setState(() {
                                    isSwitched = !isSwitched;
                                    print("isSwitched");
                                  });
                                },
                                //activeTrackColor: primary,
                                activeColor: primary,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(MdiIcons.web,color: tG,size: 17),
                            SizedBox(width: 10,),
                            Text("The languages",style: f15B,)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Arabic"),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  langId = 1;
                                });
                              },
                                child: Icon(MdiIcons.radioboxMarked,color:langId==1?primary:fG,size: langId==1?20:19,))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Text("English"),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    langId = 2;
                                  });
                                },
                                child: Icon(MdiIcons.radioboxMarked,color:langId==2?primary:fG,size: langId==2?20:19,))

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8,right: 8,top: 280),
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
