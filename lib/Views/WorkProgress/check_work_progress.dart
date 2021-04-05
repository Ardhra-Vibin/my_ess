import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/WorkProgress/work_detail_screen3.dart';

import '../widgets.dart';
class CheckWorkProgress extends StatefulWidget {
  String img;
  CheckWorkProgress({Key key,this.img}) : super(key: key);

  @override
  _CheckWorkProgressState createState() => _CheckWorkProgressState();
}

class _CheckWorkProgressState extends State<CheckWorkProgress> {

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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        iconTheme: IconThemeData(color: tG),
        title: Text("Flat Paint",style: f17tG,),
        titleSpacing:0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 12,left: 12),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:BorderRadius.circular(10),
              child: Container(
                height: 200,
                width: w,
                child:Image.asset(widget.img,fit: BoxFit.cover,),
              ),
            ),
            showw == false?   Column(
              children: [
                SizedBox(height: h/5,),
                Image.asset("assets/icons/bell.png",height: 70,),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("The worker has not yet started",style:f17tG,),
                )
              ],
            ) : PricingTerms(),

            ],
        ),
      ),
    );
  }
}
