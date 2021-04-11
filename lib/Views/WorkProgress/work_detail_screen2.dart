
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/WorkProgress/check_work_progress.dart';
import 'package:flutter_ess_app/Views/WorkProgress/work_detail_screen3.dart';
import 'package:flutter_ess_app/Views/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';

class WorkDetailsScreen2 extends StatefulWidget {
  @override
  _WorkDetailsScreen2State createState() => _WorkDetailsScreen2State();
}

class _WorkDetailsScreen2State extends State<WorkDetailsScreen2> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(height: h,
          width: w,
          child: Stack(alignment: Alignment.topCenter,
            children: [
              Container(height: h/1.7,width: w,
                child: Image.asset("assets/images/g_map.png",fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h/1.77),
                child: Container(
                  height: h,
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [BoxShadow(color: Colors.grey[300],
                    blurRadius: 2,spreadRadius: 4)],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20,right: 20,top: 25),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(clipBehavior: Clip.antiAlias,
                                height: 55,width: 55,
                                decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(8)
                                ),
                                child: Image.asset("assets/images/GOPR2789.JPG",fit: BoxFit.cover,)),
                            SizedBox(width: 10,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Worker's Name here",style: f15B,),
                                SizedBox(height: 7,),
                                Text("Customer Site here",
                                  style: f14,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("Connection",style: f15B,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(onPressed: (){},minWidth: w/2.3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: primary
                                )
                              ),
                              child: Container(width: w/3.3,
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Message",style: f15BB,),
                                    Icon(MdiIcons.chatProcessingOutline,color: primary,size: 18,)
                                  ],
                                ),
                              ),
                            ),
                            MaterialButton(onPressed: (){
                             launch("tel:+1 232 2323 23");
                            },minWidth: w/2.3,
                              color: primary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(width: w/3,
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("+1 232 2323 23",style: f14wB,),
                                    Icon(Icons.call,color: white,size: 18,)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 28,),
                        Center(child: Text("If he arrived at the site, press the next button")),
                        SizedBox(height: 50,),
                        MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PricingTerms()));
                        },minWidth: w/2.3,height: 50,
                          color: Color(0xFF05E8B2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(width: w,
                            child: Center(child: Text("Next",style: f18WB,)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
