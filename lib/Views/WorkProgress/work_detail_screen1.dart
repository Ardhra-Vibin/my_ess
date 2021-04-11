import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_ess_app/Views/WorkProgress/work_detail_screen2.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';
class CheckWorkScreen1 extends StatefulWidget {
  String img;
  CheckWorkScreen1({Key key,this.img}) : super(key: key);

  @override
  _CheckWorkScreen1State createState() => _CheckWorkScreen1State();
}

class _CheckWorkScreen1State extends State<CheckWorkScreen1> {
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        iconTheme: IconThemeData(color: tG),
        title: Text("Flat Paint",style: fappbar,),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 12,left: 12,top: 5),
        child: Column(
          children: [
            Container(
              height:200,
              width: w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/image/flatpaintchair.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => WorkDetailsScreen2()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(color: Colors.grey[300],
                    spreadRadius: 1,blurRadius: 5),]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Row(
                      children: [
                        Container(clipBehavior: Clip.antiAlias,
                            height: 40,width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("assets/images/GOPR2789.JPG",fit: BoxFit.cover,)),
                        SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("The worker is coming to you",style: f15BB,),
                            SizedBox(height: 5,),
                            Text(DateFormat.yMd().format(DateTime.now()),
                            style: f14g,)
                          ],
                        )
                      ],
                    ),
                    Image.asset("assets/icons/location.png",color: primary,height: 25,)
                ],
              ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
