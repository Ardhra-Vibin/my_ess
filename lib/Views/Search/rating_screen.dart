import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

class RatingScreen extends StatefulWidget {
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Comment and Rate your customer",style: f19B,),
              SizedBox(height: h/14,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 2,spreadRadius: 3)]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Column(
                      children: [
                        Text("Customer service evaluation"),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                          Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                          Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                          Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                          Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                        ],)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 2,spreadRadius: 3)]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Column(
                      children: [
                        Text("Workmanship"),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                            Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                            Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                            Icon(Icons.star,color: Colors.yellow[800],size: 30,),
                            Icon(Icons.star,color: Colors.grey[400],size: 30,),
                          ],),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: h/16),
              Text("write your experience with client here",style: f15,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50,left: 12,right: 12),
        child: MaterialButton(
          onPressed: (){},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          height: 50,
          minWidth: 100,
          color: primary,
          child: Text("Submit",style: f17WB,),
        ),
      ),
    );
  }
}
