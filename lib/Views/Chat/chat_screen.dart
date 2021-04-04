
import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Chat/chat_room.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        iconTheme: IconThemeData(color: tG),
        actions: [
          IconButton(
              icon: Icon(Icons.search,color:tG,),
              onPressed: (){
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                padding: const EdgeInsets.only(bottom:18.0,left: 30,right: 15),
                child: Row(
                  children: [
                    Image.asset("assets/images/chat.png",height: 25,),
                    SizedBox(width: 10,),
                    Text("Messages")
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 12,left: 12),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: sG,),
                      SizedBox(width: 10,),
                      Text("Search",style: f15sG,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 10.toDouble()*85,
              child: ListView.separated(
                separatorBuilder: (context,ind){
                  return Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Divider(thickness: .5,color: Colors.grey[400],),
                  );
                },
                itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoom()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7,right: 12,left: 12,bottom: 12),
                        child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:primary
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name Here",style:f17tG,),
                                    Text("Lorem infoprism",style: f15sG,)
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:primary
                              ),
                              child: Center(child: Text("4",style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        ),
                        ),
                      ),
                    );
                  })),


          ],
        ),
      ),
    );
  }
}
