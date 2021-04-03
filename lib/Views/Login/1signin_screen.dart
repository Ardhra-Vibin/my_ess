import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Login/1.1signin_verification.dart';
import 'package:flutter_ess_app/Views/localization/licalization_constants.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

import '../widgets.dart';
import '../widgets.dart';
import '2signup_screen.dart';

class SignIn_Screen extends StatefulWidget {
  @override
  _SignIn_ScreenState createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {
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
        title: Text(getTranslated(context, "back"),
        ),
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>VerifyFromSignIn()
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(getTranslated(context,"sign in",),
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
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 30, top: 10),
        child: Container(
          height: height,
          width: width,
          decoration: cont1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(getTranslated(context, "Enter the email address and password")
                    ,
                    style: f15tG,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: email,
                  style: f15,
                  decoration: inputText(getTranslated(context, "E-mail")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: showPassword,
                  style: f15,
                  decoration: InputDecoration(
                      hintText:"Password",
                      hintStyle: f11sG,
                      border: InputBorder.none,
                      //contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                      fillColor: white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                          showPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: primary,
                          size: 20,
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyFromSignIn()));
                  },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width - 30,
                  color: Colors.white,
                  splashColor: second,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: primary)),
                  child: Center(
                    child: Text(getTranslated(context,"sign in",),
                      style: f17P,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(getTranslated(context, "Create a new account",),
                        style: f15tG,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
