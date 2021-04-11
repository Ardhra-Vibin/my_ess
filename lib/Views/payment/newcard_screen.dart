import 'package:flutter/material.dart';

import '../widgets.dart';
class NewCard extends StatefulWidget {
  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height;
    var w =MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.payment,size: 20,color: tG,),
                SizedBox(width: 10,),
                Text("New card",style: f17tG,),
                SizedBox(height: 20,),
              ],
            ),
            SizedBox(height: 25,),
            Container(
              height: w/2.2,
              width: w,
              child: Image.asset("assets/image/Visa.png",fit: BoxFit.fill,),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Add a new card",style: f12tGw500,),
            ),
            SizedBox(height: 10,),
            Container(
              width: w,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [BoxShadow(color: Colors.grey[300],
                      spreadRadius: 1,blurRadius: 5),]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  width: 150,
                  child: TextField(
                    style: f15,
                    decoration: InputDecoration(
                        hintText: "Enter the full name",
                        hintStyle:f11sG,
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [BoxShadow(color: Colors.grey[300],
                      spreadRadius: 1,blurRadius: 5),]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: TextField(
                        style: f15,
                        decoration: InputDecoration(
                            hintText: "xxxx xxxx xxxx xxxx 1234",
                            hintStyle:f11sG,
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Image.asset("assets/image/paymentred.png",height: 15,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 45,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [BoxShadow(color: Colors.grey[300],
                          spreadRadius: 1,blurRadius: 5),]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Expiry date",style: f11sG,),
                          Image.asset("assets/image/apple.png",height: 20,color: tG,),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [BoxShadow(color: Colors.grey[300],
                          spreadRadius: 1,blurRadius: 5),]
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Center(
                          child: Text("cw",style:f11sG,)
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 8,right: 8,top: MediaQuery.of(context).size.height/6),
              child: MaterialButton(
                height: 45,
                minWidth: MediaQuery.of(context).size.width-30,
                color: primary,
                splashColor: second,
                colorBrightness: Brightness.light,
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => GPS_SiteSearch()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("Confirm",style: f15W,),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
