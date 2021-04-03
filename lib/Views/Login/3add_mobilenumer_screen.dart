import 'package:flutter/material.dart';

import '../widgets.dart';
import '../widgets.dart';
import '../widgets.dart';
import '4verification_screen.dart';
class AddNumber extends StatefulWidget {
  @override
  _AddNumberState createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {


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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomPadding: false,

      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        title: Text(
          "back",
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8,bottom: 30,top: 10),
        child: Container(
          height: height,
          width: width,
          decoration: cont1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
            child: Column(
              children: [
                Text(
                  "Enter a phone number",
                  style: f15tG,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300])
                  ),
                  child: Row(
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
                        color: Colors.grey[400],
                        height: 50,),

                      Container(
                        width:MediaQuery.of(context).size.width-168,
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
                ),

                SizedBox(
                  height: 230,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Verification()));
                  },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width - 30,
                  color: Colors.white,
                  splashColor: second,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: primary)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Next",style: f17P),
                          SizedBox(width: 115,),
                          Icon(Icons.arrow_forward,color: primary,)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
