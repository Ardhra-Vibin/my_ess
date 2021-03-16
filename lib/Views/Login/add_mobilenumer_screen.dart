import 'package:flutter/material.dart';

import '../widgets.dart';
import '../widgets.dart';
import '../widgets.dart';
import 'verification_screen.dart';
class AddNumber extends StatefulWidget {
  @override
  _AddNumberState createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {


  List countryCodes = [{"code":"+91","image":"assets/images/india.png"},{"code":"+971","image":"assets/images/uae.png"}];
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
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text("Back",style:f15W ,),
                      Icon(Icons.arrow_forward_ios_sharp,color: white,size: 15,),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
          height: height,
          width: width,
          decoration: cont1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
            child: Column(
              children: [
                Text(
                  "Add Mobile Number",
                  style: f15tG,
                ),
                SizedBox(
                  height: 30,
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
                        width: 65,
                        alignment: Alignment.center,
                        child: Center(
                          child: Container(
                            height: 52,
                            child: DropdownButton(
                              isExpanded: true,
                              value: codee,
                              iconEnabledColor: Colors.black,
                              iconSize: 25,
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
                                            child: Image.asset(item["image"],height:20,),
                                          )
                                        ],
                                      ));
                                }).toList()
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[400],
                        height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 12),
                        child: Text(codee,style: f15,),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width-162,
                        child: TextField(
                          style: f15,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your number",
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
                  child: Center(
                    child: Text("Continue"),
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
