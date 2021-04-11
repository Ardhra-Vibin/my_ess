import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Search/rating_screen.dart';
import 'package:flutter_ess_app/Views/WorkProgress/check_work_progress.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  bool showSearch;

  @override
  void initState() {
    super.initState();
    setState(() {
      showSearch = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: primary,
      body: Stack(
        children: [
          Container(height: h/4.8,
            decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )),
            child: Padding(
              padding:
              const EdgeInsets.only(left: 12, right: 12, top: 80,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset(
                                "assets/images/GOPR2792.JPG",
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_outline,
                                color: white,
                                size: 12,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Name Here",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: white,
                                size: 12,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("location is here,the city",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.white)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingScreen()));
                        },
                        icon:Icon(
                          Icons.notifications_none,color: white,size: 30,),

                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding:  EdgeInsets.only(top:h/14),
              child: Container(
                height: h/1.5,
                width: w-50,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [BoxShadow(color: Colors.grey[200],spreadRadius: 1,blurRadius: 1)],
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            showSearch=!showSearch;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left:12,right: 12),
                          child: Row(
                            children: [
                              Icon(Icons.search,color: Colors.grey,),
                              SizedBox(width: 10,),
                              Text("Search",style: f17G,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Divider(color: Colors.grey,),
                   showSearch ? Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),
                       Divider(color: Colors.grey,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                         child: Text("Search for workers",style: f15tG,),
                       ),


                     ],
                   ) : Column(
                        children: [
                          SizedBox(height: 60,),
                          Center(
                            child: Image.asset("assets/image/search.png"),
                          ),
                          SizedBox(height: 50,),
                          Text("Ooo... you couldn't find that word",style: f14g,),
                          SizedBox(height: 10,),
                          Text("Please Search again",style: f14g,)
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
          )

        ],
      ),
    );
  }
}
