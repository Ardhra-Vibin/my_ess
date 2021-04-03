import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets.dart';
import '../widgets.dart';
import 'categories.dart';

class SubCategories extends StatefulWidget {

  SubCategories({this.sel_ind,this.CatList});

  int sel_ind;
  List CatList;
  int sub_ind;
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  DateTime now = DateTime.now();
  //String formattedDate = DateFormat('dd-MM-YYY').format(now);



  int radioId;

  void initState(){
    super.initState();
    setState(() {
      radioId = 2;
    });
  }

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true,) : _indicator(false,));
    }
    return list;
  }

  Widget _indicator(bool isActive,) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 50.0 : 30.0,
      decoration: BoxDecoration(
        color: isActive ? second : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }


  final ItemScrollController itemScrollController = ItemScrollController();

  /// Listener that reports the position of items when the list is scrolled.
  final ItemPositionsListener itemPositionsListener =
  ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black38
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 15,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(MdiIcons.buffer,color: tG,),
                    SizedBox(width: 10,),
                    Text("Categories",style: f15tG,)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 120,
                  child: widget.CatList.length >0?ScrollablePositionedList.builder(
                      initialScrollIndex: widget.sel_ind,
                      scrollDirection: Axis.horizontal,
                      itemScrollController: itemScrollController,
                      itemPositionsListener: itemPositionsListener,
                      itemCount: widget.CatList.length,
                      itemBuilder: (context,index){
                        return Opacity(
                          opacity: index== widget.sel_ind ? 1 : .2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>SubCategories(sel_ind: index,CatList: widget.CatList,)));
                                },
                                child: Container(
                                  child: Card(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Container(
                                            height: widget.sel_ind==index ? 90: 80,
                                            child: Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Image.asset(widget.CatList[index]["image"],fit: BoxFit.fill,),
                                            ),
                                          ),
                                        ),
                                        Text(widget.CatList[index]["name"],),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                  ) : Text("No categories"),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Sucategories",style: f15tG,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: subCategories.length.toDouble()*150,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: subCategories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                    ),
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 12,left: 12,top: 0),
                        child: GestureDetector(
                          onTap:(){
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context,){
                                return StatefulBuilder(
                                  builder: (BuildContext context,StateSetter state){
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              topLeft: Radius.circular(30)
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: ListView(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: _buildPageIndicator(),
                                            ),
                                            SizedBox(height: 50,),
                                            Container(
                                              height: MediaQuery.of(context).size.height/2,
                                              child: PageView(
                                                physics: ClampingScrollPhysics(),
                                                controller: _pageController,
                                                onPageChanged: (int page) {
                                                  state(() {
                                                    _currentPage = page;
                                                  });
                                                },
                                                children: <Widget>[
                                                  Center(child: Container(child: Column(
                                                    children: [
                                                      Text("You Select",style: f17tG,),
                                                      SizedBox(height: 20,),
                                                      Container(
                                                        child: Card(
                                                          child: Column(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                                child: Container(
                                                                  height: 120,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.all(3.0),
                                                                    child: Image.asset(subCategories[index]["image"],fit: BoxFit.fill,),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(subCategories[index]["name"],),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 20,),
                                                      Text("You will be connected to customer service\nin the next stage",
                                                        style: f15tG,
                                                        textAlign: TextAlign.center,),
                                                      SizedBox(height: 20,),
                                                      MaterialButton(onPressed: (){
                                                        _pageController.nextPage(
                                                          duration: Duration(milliseconds: 500),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                        color:second,
                                                        height: 45,
                                                        minWidth: MediaQuery.of(context).size.width-30,
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                        child: Text("Next",style: f17WB,),
                                                      )
                                                    ],
                                                  ),)),//page1
                                                  Center(child: Container(child: Padding(
                                                    padding: const EdgeInsets.only(right: 12,left: 12),
                                                    child: Column(
                                                      children: [
                                                        Text("Determine when to request the service",style: f15tG,),
                                                        SizedBox(height: 20,),
                                                        GestureDetector(
                                                          onTap: (){
                                                            setState(() {
                                                              radioId = 1;
                                                            });
                                                          },
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Right Now"),
                                                              Icon(MdiIcons.radioboxMarked,color: radioId==1?second:fG,size: radioId==1?27:19,)
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 20,),
                                                        Divider(color: Colors.grey,),
                                                        SizedBox(height: 20,),

                                                        GestureDetector(
                                                          onTap:(){
                                                            setState(() {
                                                              radioId = 2;
                                                            });
                                                          },
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Select another day"),
                                                              Icon(MdiIcons.radioboxMarked,color: radioId==2?second:fG,size: radioId==2?27:19,)
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 20,),
                                                        Row(
                                                          children: [
                                                            Center(
                                                              child: DropdownDatePicker(
                                                                firstDate: ValidDate(year: 2021, month: DateTime.january, day: 01),
                                                                lastDate: ValidDate(year: 2050, month: DateTime.december, day: 12),
                                                                initialDate: NullableValidDate(year: 2021, month: null, day: 01),
                                                                ascending: false,
                                                                dateFormat: DateFormat.dmy,
                                                                dateHint: DateHint(year: 'year', month: 'month', day: 'day'),
                                                                dropdownColor:second,
                                                                underLine: SizedBox(),
                                                                //textStyle: ,
                                                              ),
                                                            ),


                                                          ],
                                                        ),
                                                        SizedBox(height: 20,),

                                                        MaterialButton(onPressed: (){
                                                          _pageController.nextPage(
                                                            duration: Duration(milliseconds: 500),
                                                            curve: Curves.ease,
                                                          );
                                                        },
                                                          color:second,
                                                          height: 45,
                                                          minWidth: MediaQuery.of(context).size.width-30,
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                          child: Text("Next",style: f17WB,),
                                                        )
                                                      ],
                                                    ),
                                                  ),)),//page2
                                                  Center(child: Container(child: Column(
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Past location",style: f15tG,),
                                                      SizedBox(height: 20,),
                                                      Text("New location",style: f15tG,),
                                                      SizedBox(height: 20,),
                                                      MaterialButton(onPressed: (){
                                                        _pageController.nextPage(
                                                          duration: Duration(milliseconds: 500),
                                                          curve: Curves.ease,
                                                        );
                                                      },color:second,
                                                        height: 45,
                                                        minWidth: MediaQuery.of(context).size.width-30,
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                        child: Text("Next",style: f17WB,),
                                                      )
                                                    ],
                                                  ),)),///page3
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // if you need this
                                side: BorderSide(
                                  color: Colors.grey.withOpacity(0.2),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),
                                      child: Container(
                                          child: Image.asset(subCategories[index]["image"])),
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(subCategories[index]["name"])
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}
