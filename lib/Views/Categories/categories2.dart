import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Categories/sub_categories_screen.dart';

import '../widgets.dart';

class CheckCategory extends StatefulWidget {
  @override
  _CheckCategoryState createState() => _CheckCategoryState();
}

class _CheckCategoryState extends State<CheckCategory> {

  List searchResult = [];

  @override
  Widget build(BuildContext context) {
    
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    TextEditingController _search = TextEditingController();

    List categories = [
      {
        "name": "HVAC services",
        "image":"assets/images/GOPR2788.JPG"
      },
      {
        "name": "Paint services",
        "image":"assets/images/GOPR2789.JPG"
      },
      {
        "name": "Home renovation",
        "image":"assets/images/GOPR2792.JPG"
      },
      {
        "name": "Pluming services",
        "image":"assets/images/GOPR2805.JPG"
      },
      {
        "name": "Cleaning",
        "image":"assets/images/GOPR2789.JPG"
      },
      {
        "name": "Lifestyle",
        "image":"assets/images/GOPR2788.JPG"
      },
    ];
   // List searchResult = [];

    searchCat(String val){
      print("val ==" +val);
      if(val==''){
        setState(() {
          _search.text = "";
        });
      }
      categories.forEach((element) {
        if(_search.text!="" && element["name"].toString().toLowerCase().contains(val.toLowerCase())){
          setState(() {
            var l = searchResult.length;
            searchResult.insert(l,element);
          });
        }
        print("Search Result Length :" +searchResult.length.toString());
        print("Search Result Data :" +searchResult.toString());
      });
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: w,
                    height: w/2,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                height:50,width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 3),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                  child: Image.asset("assets/images/GOPR2789.JPG",
                                    fit: BoxFit.fill,height: 50,width: 50,)),
                              SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.person_outlined,color: Colors.white70,size: 12,),
                                      SizedBox(width: 5,),
                                      SizedBox(height: 5,),
                                      Text("Name Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,color: Colors.white70,size: 12,),
                                      SizedBox(width: 5,),
                                      SizedBox(height: 5,),
                                      Text("location is here,the city",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.notifications_none,color: white,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,right: 15,left: 15),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 50,
                      width: MediaQuery.of(context).size.width-30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow:[ BoxShadow(
                          color: Colors.grey[400],
                          spreadRadius: 1,
                          blurRadius: 5,
                        )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.search,color: fG,),
                                SizedBox(width: 10,),
                                Container(
                                  height: 50,
                                  width: w/2,
                                  child: TextField(
                                    controller: _search,
                                    style: f15,
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle: f11sG,
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(icon: Icon(Icons.close),
                                      onPressed: (){
                                        searchCat("");
                                      },
                                      )
                                    ),
                                    onChanged: searchCat,
                                  ),

                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: searchResult.length >0? Container(
                  height: h,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,childAspectRatio: .88
                      ),
                      itemCount: searchResult.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Colors.grey[300],
                                spreadRadius: 3,
                                blurRadius: 2
                              )]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Image.asset(searchResult[index]["image"]),
                                ),
                                SizedBox(height: 10,),
                                Text(searchResult[index]["name"])
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ):Container(
                  height: h,
                  child: GridView.builder(
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .88
                      ),
                      itemCount: categories.length,
                      itemBuilder: (context,index){
                        return Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                spreadRadius: 3,
                                blurRadius: 2
                              )
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Image.asset(categories[index]["image"]),
                                ),
                                SizedBox(height: 10,),
                                Text(categories[index]["name"])
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.only(left: 15,right: 12),
              //   child: Column(
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Text("Categories",style: f15tG,),
              //         ],
              //       ),
              //       Container(
              //         height: categories.length.toDouble()*150,
              //         child: GridView.builder(
              //             physics: NeverScrollableScrollPhysics(),
              //             itemCount: categories.length,
              //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //                 crossAxisCount: 2,
              //                 childAspectRatio: 1.2
              //             ),
              //             itemBuilder: (context,index){
              //               return Padding(
              //                 padding: const EdgeInsets.only(right: 12,left: 12,top: 0),
              //                 child: Container(
              //                   alignment: Alignment.center,
              //                   child: GestureDetector(
              //                     onTap: (){
              //                       Navigator.push(context, MaterialPageRoute(builder: (context) =>SubCategories()));
              //                     },
              //                     child: Column(
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius:BorderRadius.circular(10),
              //                           child: Container(
              //                               child: Image.asset(categories[index]["image"])),
              //                         ),
              //                         SizedBox(height: 4,),
              //                         Text(categories[index]["name"])
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //               );
              //             }
              //         ),
              //       )
              //
              //
              //     ],
              //   ),
              // )

            ],
          ),
        ),
      ),
    );
  }
}
