import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController _search = TextEditingController();

  List Dataaa = [
    {
      "color" : Colors.red,
      "name" : "Painting"
    },
    {
      "color" : Colors.green,
      "name" : "Home Renev"
    },
    {
      "color" : Colors.black,
      "name" : "Plumbing"
    },
    {
      "color" : Colors.yellow,
      "name" : "Cleaning"
    },
    {
      "color" : Colors.pink,
      "name" : "Lifestyle"
    },
    {
      "color" : Colors.blue,
      "name" : "Life Card"
    },
    {
      "color" : Colors.purple,
      "name" : "Cucumba"
    },
    {
      "color" : Colors.brown,
      "name" : "Flatt"
    },
    {
      "color" : Colors.lime,
      "name" : "Batter"
    },
  ];

  List searchResult =[];

  searchCat(String val){
    searchResult.clear();
    print("valll "+val);
    if(val==''){
      setState(() {
        _search.text ="";
      });
    }
    Dataaa.forEach((element) {
      if( _search.text!='' && element["name"].toString().toLowerCase().contains(val.toLowerCase())){
        setState(() {
          var l = searchResult.length;
          searchResult.insert(l, element);
        });
      }
      print("Search Result Length : "+searchResult.length.toString());
      print("Search Result Data : "+searchResult.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
            title: Text("Grid")
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _search,
                onChanged: searchCat,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    hintText: "Search",
                    suffixIcon: IconButton(icon: Icon(Icons.close),
                      onPressed: (){
                        searchCat('');
                      },)
                ),
              ),
            ),
            Expanded(
              child: searchResult.length>0 ?  GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,childAspectRatio: .88,
                  ),
                  itemCount: searchResult.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                                    color: searchResult[index]["color"],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(searchResult[index]["name"])
                            ],
                          ),
                        ),
                      ),
                    );
                  }) :
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,childAspectRatio: .88,
                  ),
                  itemCount: Dataaa.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                                    color: Dataaa[index]["color"],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(Dataaa[index]["name"])
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        )
    );
  }
}