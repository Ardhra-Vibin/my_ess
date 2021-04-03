import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ess_app/Views/Login/contents.dart';
import 'package:flutter_ess_app/Views/Login/1signin_screen.dart';
import 'package:flutter_ess_app/Views/localization/licalization_constants.dart';
import 'package:flutter_ess_app/Views/widgets.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  PageController _controller;

List  contents = [
  {
    "title": 'Are you having trouble?',
    "image": 'assets/images/splash3.png',
    "discription": "We provide you with the various services you need and solve all the problems you face in a fast and high quality manner"
  },
  {
    "title": 'Ess App',
    "image": 'assets/images/splash2.png',
    "discription": "Through our application, you can save time and fatigue by searching for workers close"
        " to you and communicating with them to solve any problem"
  },
  {
    "title": 'The best works are waiting for you',
    "image": 'assets/images/splash1.png',
    "discription": "Through our application, you can save time and fatigue by searching for workers "
        "close to you and communicating with them to solve any problem ess"
  },
  ];

  @override
  void initState() {
    print("first page" + contents[0].toString());
    print("second page" + contents[1].toString());
    print("third page" + contents[2].toString());
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        actions: [
          currentIndex != contents.length-1 ?
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn_Screen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(getTranslated(context, "Skip"),style:f15tG ,),
                   SizedBox(width: 10,),
                  Icon(Icons.arrow_forward,color: tG,size: 15,),
                ],
              ),
            ),
          ): Container()
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex = index;
                    });
                    },
                  itemBuilder: (_, i){
                    return Padding(
                      padding: const EdgeInsets.only(top: 40,right: 40,left: 40,bottom:33 ),
                      child: Column(
                        children: [
                          Image.asset(contents[i]["image"],
                            //     title: Text(getTranslated(context, 'continue')),
                            height: 300,
                          ),
                          Text(
                            getTranslated(context, contents[i]["title"])
                           ,textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(getTranslated(context, contents[i]["discription"]),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                      (index) => buildDot(index, context),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 20,bottom: 8),
              child: MaterialButton(
                height: 45,
                minWidth: MediaQuery.of(context).size.width-30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            currentIndex == contents.length - 1 ? "Continue" : "Next",
                          style: f17WB,
                        ),
                        SizedBox(width: 113,),
                        Icon(Icons.arrow_forward,size: 25,)
                      ],
                    ),
                  ],
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SignIn_Screen(),
                      ),
                    );
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                color: primary,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 15,
      width: currentIndex == index ? 15 : 15,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: primary),
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ?primary : Colors.white,
      ),

    );
  }
}
