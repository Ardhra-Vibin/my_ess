import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';
class RequestService extends StatefulWidget {
  @override
  _RequestServiceState createState() => _RequestServiceState();
}

class _RequestServiceState extends State<RequestService> {
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h / 5,
                width: w,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Row(
                  children: [
                    Text("Request Service"),
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(MdiIcons.phone,color: white,),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Wait to be connected with customer\nservice",textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  Text("You can make a call by pressing the button above")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
