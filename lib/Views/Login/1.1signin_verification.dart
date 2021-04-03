import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

import '../Gps/1gps_introduction.dart';
import '2signup_screen.dart';

class VerifyFromSignIn extends StatefulWidget {
  @override
  _VerifyFromSignInState createState() => _VerifyFromSignInState();
}

class _VerifyFromSignInState extends State<VerifyFromSignIn> {
  TextEditingController email = TextEditingController();

  bool showPassword;
  void initState() {
    super.initState();
    setState(() {
      showPassword = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        // resizeToAvoidBottomPadding: false,
        backgroundColor: primary,
        appBar: AppBar(
          backgroundColor: primary,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "sign in",
                        style: f15W,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 30, top: 10),
            child: Container(
              height: height,
              width: width,
              decoration: cont1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
                child: Column(children: [
                  Text(
                    "Please verify the password",
                    style: f15tG,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    color: white,
                    child: TextField(
                      controller: email,
                      style: f15,
                      decoration: inputText("E-mail"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    color: white,
                    child: TextField(
                      obscureText: showPassword,
                      style: f15,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: f11sG,
                          border: InputBorder.none,
                          //contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                          fillColor: white,
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: Icon(showPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageIntroduction()),(route) => false);
                    },
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width - 30,
                    color: Colors.white,
                    splashColor: second,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: primary)),
                    child: Center(
                      child: Text("sign in",style: f17P,),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create a new account",
                          style: f15tG,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )));
  }
}
