import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';
import '../widgets.dart';
import '../widgets.dart';
import '../widgets.dart';

class PricingTerms extends StatefulWidget {
  @override
  _PricingTermsState createState() => _PricingTermsState();
}

class _PricingTermsState extends State<PricingTerms> {

  bool showw;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      showw = false;
    });
    _timer();
  }

  _timer()async {
    Timer(Duration(seconds: 3),(){
      setState(() {
        showw=true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;


    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        iconTheme: IconThemeData(color: tG),
        titleSpacing: 0,
        title: Text("Flat Paint",style: f17tG,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 8),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height:180,
                  width: w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/image/flatpaintchair.png",fit: BoxFit.cover,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pricing terms",style: f15B,),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [BoxShadow(color: Colors.grey[300],
                              spreadRadius: 1,blurRadius: 5),]
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Paint type1"),
                            Icon(Icons.check_circle,color: second,)
                          ],
                        ),
                      ),),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [BoxShadow(color: Colors.grey[300],
                              spreadRadius: 1,blurRadius: 5),]
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Paint type1"),
                            Icon(Icons.check_circle,color: second,)
                          ],
                        ),
                      ),),
                    SizedBox(height: 15,),
                    Text("Business information",style: f15B,),
                    SizedBox(height: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [BoxShadow(color: Colors.grey[300],
                              spreadRadius: 1,blurRadius: 5),]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:12,right: 12,top: 10,bottom: 10),
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
                            showw==false ? Icon(Icons.access_time,color: Colors.yellow[700],) : Icon(Icons.check_circle,color: second,),
                          ],
                        ),
                      ),
                    ),





                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(bottom:28.0,right: 12,left: 12),
        child: Opacity(
          opacity: showw ? 1: .3,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: MaterialButton(
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color: second,
              splashColor: second,
              colorBrightness: Brightness.light,
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(width: w,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Paying",style: f17WB,),
                    Text("455 RSA",style: f17WB,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}