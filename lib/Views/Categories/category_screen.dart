import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Categories/sub_categories_screen.dart';

import '../widgets.dart';
import 'categories.dart';
import 'notification_screen.dart';

class Category_Screen extends StatefulWidget {
  @override
  _Category_ScreenState createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category_Screen> {

  List searchResult = [];

  TextEditingController _search = TextEditingController();
  searchCategory(String val){
    searchResult.clear();
    print("val ==" +val);
    if(val==''){
      setState(() {
        _search.text = "";
      });
    }
    categories.forEach((element) {
      if(_search.text!='' && element["name"].toString().toLowerCase().contains(val.toLowerCase())){
        setState(() {
          var l = searchResult.length;
          searchResult.insert(l,element);
        });
      }
    });
    print("Search Result Length :" +searchResult.length.toString());
    print("Search Result Data :" +searchResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: h / 4.7,
                    width: w,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 50),
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
                                      Icons.location_on_outlined,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                              },
                              icon:Icon(
                              Icons.notifications_none,color: white,size: 30,),

                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 120.0, right: 8, left: 8),
                    child: Center(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width - 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[400],
                                  blurRadius: 1,
                                  spreadRadius: 2)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: fG,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: w / 2,
                                    child: TextField(
                                      style: f15,
                                      keyboardType: TextInputType.text,
                                      controller: _search,
                                      decoration: InputDecoration(
                                        //contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                                       //filled: true,
                                        hintText: "Search",
                                        hintStyle: TextStyle(fontSize: 11),
                                        border: InputBorder.none,
                                      ),
                                      onChanged: searchCategory,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.close,
                                    color: fG,
                                  ),
                                  onPressed: () {
                                    searchCategory('');
                                  })
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Categories",style: f15tG,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 12,left: 12),
                      child: Container(
                        height: h/1.5,
                        child: searchResult.length >0?GridView.builder(
                            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1
                            ),
                            itemCount: searchResult.length,
                            itemBuilder: (context,index){
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>SubCategories()));
                                    },
                                    child: Container(
                                      child: Card(
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Container(
                                                height: 120,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Image.asset(searchResult[index]["image"],fit: BoxFit.fill,),
                                                ),
                                              ),
                                            ),
                                            Text(searchResult[index]["name"],),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                            ):GridView.builder(
                            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1
                            ),
                            itemCount: categories.length,
                            itemBuilder: (context,index){
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>SubCategories(sel_ind: index,CatList: categories,)));
                                    },
                                    child: Container(
                                      child: Card(
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Container(
                                                height: 120,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Image.asset(categories[index]["image"],fit: BoxFit.fill,),
                                                ),
                                              ),
                                            ),
                                            Text(categories[index]["name"])
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    )

                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );

  }
}
