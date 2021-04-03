import 'package:flutter/material.dart';

import '../widgets.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(

                      children: [
                        Column(
                          children: [
                            Container(
                              height:50,
                                width: 50,
                                child: Image.asset("assets/images/GOPR2788.JPG")),
                            Container(
                                height:50,
                                width: 50,
                                child: Image.asset("assets/images/GOPR2788.JPG"))

                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_outlined,size: 20,),
                                Text("Person")
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.person_outlined,size: 20,),
                                Text("location is here,the city")
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person_outlined,size: 20,),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
