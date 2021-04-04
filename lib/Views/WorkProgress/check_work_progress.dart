import 'package:flutter/material.dart';

import '../widgets.dart';
class CheckWorkProgress extends StatefulWidget {
  String img;
  CheckWorkProgress({Key key,this.img}) : super(key: key);

  @override
  _CheckWorkProgressState createState() => _CheckWorkProgressState();
}

class _CheckWorkProgressState extends State<CheckWorkProgress> {
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
                child:Image.asset(widget.img,fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 100,),
            Icon(Icons.add_alert,color: tG,size: 80,),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("The worker not yet started",style:f15tG,),
            )
            ],
        ),
      ),
    );
  }
}
