import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../widgets.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  TextEditingController _search = TextEditingController();
  List categories = [
    {
      "name": "HVAC services",
      "image":"assets/images/GOPR2788.JPG"
    },
    {
      "name": "HVAC services",
      "image":"assets/images/GOPR2789.JPG"
    },
    {
      "name": "HVAC services",
      "image":"assets/images/GOPR2792.JPG"
    },
    {
      "name": "HVAC services",
      "image":"assets/images/GOPR2805.JPG"
    },
    {
      "name": "HVAC services",
      "image":"assets/images/GOPR2789.JPG"
    },
    {
      "name": "HVAC services",
      "image":"assets/images/GOPR2788.JPG"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Material(
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey[400],
              appBar: AppBar(
                backgroundColor: primary,
                elevation: 0,
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  color: primary,
                  splashColor: second,
                  colorBrightness: Brightness.light,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("confirm",style: f15W,),
                ),
              ),
              body: SingleChildScrollView(
                child: ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 500  ,
                        color: primary,
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(top:100,right: 15,left: 15 ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 86,left: 12),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(8) ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Image.asset("assets/images/flag.png",height: 20,color: white,),
                        SizedBox(width: 10,),
                        Text("Detect Location",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),),
                      ],
                    )),
              ),
              SizedBox(height: 80,),
              Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 50,
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width-30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12,),
                  child: Column(
                    children: [
                     Row(
                       children: [
                         Icon(Icons.search),
                         SizedBox(width: 10,),
                         Container(
                           width: w-88,
                           child: TextField(
                             controller: _search,
                             style: f15,
                             decoration: InputDecoration(
                               hintText: "Search",
                               border: InputBorder.none,
                               contentPadding: EdgeInsets.symmetric(vertical: 7)
                             ),
                           ),
                         )
                       ],
                     ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Text("ccc"),
              SizedBox(height: 30,),
              Container(
                height: categories.length.toDouble()*150,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2
                  ),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        //decoration: ,

                        child: Column(
                          children: [
                            Container(
                                child: Image.asset(categories[index]["image"])),
                            SizedBox(height: 10,),
                            Text(categories[index]["name"])
                          ],
                        ),
                      ),
                    );
                  }
                ),
              )


            ],
          ),
        ],

      ),
    );
  }
}
