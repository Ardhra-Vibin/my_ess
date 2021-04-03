import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

class Pagiiii extends StatefulWidget {
  @override
  _PagiiiiState createState() => _PagiiiiState();
}

class _PagiiiiState extends State<Pagiiii> {

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 50.0 : 30.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFffd55e) : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black26,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  Center(child: Container(child: Column(
                    children: [
                      Text("11111",style: f15W,),
                      SizedBox(height: 15,),
                      MaterialButton(onPressed: (){
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },color: Colors.green,
                      child: Text("Next"),
                      )
                    ],
                  ),)),//page1
                  Center(child: Container(child: Column(
                    children: [
                      Text("222222",style: f15W,),
                      SizedBox(height: 15,),
                      MaterialButton(onPressed: (){
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },color: Colors.green,
                        child: Text("Next"),
                      )
                    ],
                  ),)),//page2
                  Center(child: Container(child: Column(
                    children: [
                      Text("333333",style: f15W,),
                      SizedBox(height: 15,),
                      MaterialButton(onPressed: (){
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },color: Colors.green,
                        child: Text("Next"),
                      )
                    ],
                  ),)),///page3
                ],
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
