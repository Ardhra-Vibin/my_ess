import 'package:flutter/material.dart';

import '../widgets.dart';
import 'newcard_screen.dart';
class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.payment,size: 20,color: tG,),
                      SizedBox(width: 10,),
                      Text("payment methods",style: f17tG,),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCard()));
                    },
                      child: Image.asset("assets/image/add_circle.png",height: 25,))
                ],
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Card 1",style: f12tGw500,),
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Card 2",style: f12tGw500,),
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
                      Image.asset("assets/image/visa_text.jpeg",height: 25,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Center(child: Text("- or use -",style: f12tGw500,)),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
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
                            Image.asset("assets/image/apple.png",height: 20,color: tG,),
                            Text("Pay",style: f17tG,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 150,
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
                        child: Text("SamsungPay",style: TextStyle(
                          color:Colors.blue[700]
                        ),)
                      )
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
