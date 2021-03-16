import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';
class SignIn_Screen extends StatefulWidget {
  @override
  _SignIn_ScreenState createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {
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
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Container(
          height: height,
          width: width,
          decoration: cont1,
          child: Padding(
            padding: const EdgeInsets.only(top: 12,left: 12,right: 12),            child: Column(
              children: [
                Text("Create an account",style: f15tG,),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1, color: Colors.transparent, style: BorderStyle.solid)),
                  child: TextField(
                    style: f15,
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: f11sG,
                      //border: InputBorder.none,
                      fillColor: white,
                      filled: true,

                    ),
                  ),
                ),
                SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
