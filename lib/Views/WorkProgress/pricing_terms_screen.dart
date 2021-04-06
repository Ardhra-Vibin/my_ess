import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';
import '../widgets.dart';
import '../widgets.dart';
import '../widgets.dart';

class PricingTermsScreen extends StatefulWidget {
  @override
  _PricingTermsScreenState createState() => _PricingTermsScreenState();
}

class _PricingTermsScreenState extends State<PricingTermsScreen> {
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        iconTheme: IconThemeData(color: tG),
        title: Text("Flat Paint"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h/3.5,
                width: w,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/GOPR2792.JPG",fit: BoxFit.cover,),
              ),
              SizedBox(height: 15,),
              Text("Pricing terms",style: f15B,),
              SizedBox(height: 15,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Paint type1"),
                      Icon(Icons.check_circle_outline,color: second,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Paint type2"),
                      Icon(Icons.check_circle_outline,color: second,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Business information",style: f15B,),
              SizedBox(height: 15,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height:30,
                              width:30,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Image.asset("assets/images/GOPR2792.JPG",fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("The work has started",style: f15tGB,),
                              SizedBox(height: 5,),
                              Text("24/01/2021")
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 55,
                        color: fG,
                      ),
                      Text("0:23",style: f17tG,),
                      Icon(Icons.access_time_rounded,color: Colors.redAccent[100],),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Text("Work in progress",style:f25tG,),
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
    );
  }
}
