import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        iconTheme: IconThemeData(color: tG),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: w,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:18.0,left: 40,right: 15),
                    child: Text("Name Here",style: f15B,),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                    height: h-208,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8),
                            child: Column(
                              children: [
                                index==0 ? Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text("YESTERDAY, 2:30 PM",style: f12,),
                                ) : Container(),
                                Stack(
                                  alignment: index%2==0 ? Alignment.topLeft : Alignment.topRight,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 7,right: 12,left: 12,bottom: 12),
                                        child: Row(mainAxisAlignment: index%2==0 ? MainAxisAlignment.start : MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              constraints: BoxConstraints(maxWidth: w - 150),
                                              decoration: BoxDecoration(
                                                color:index%2==0 ? primary : white,
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15.0),
                                                child: Text(index%2==0 ?"Hi, Zakaria, I want to change my Room Color" : "Ok. No problem",style: index%2==0 ? f14W : f14,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: index%2==0 ? white : primary,
                                        borderRadius: BorderRadius.circular(5)
                                      ),

                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        })),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: h-155,left: 12,right: 12,bottom: 10),
              child: Container(height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 2,spreadRadius: 2
                    )
                  ],
                    color: white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: w-100,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10,),
                            border: InputBorder.none,
                            hintText: "Say something...",
                            hintStyle: f14g
                          ),
                        )),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add,color: primary,size: 30,))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
