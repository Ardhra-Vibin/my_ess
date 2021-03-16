import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

import '../widgets.dart';
import '../widgets.dart';
import 'signup_screen.dart';
class SignIn_Screen extends StatefulWidget {
  @override
  _SignIn_ScreenState createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {

  TextEditingController email = TextEditingController();

  bool showPassword;
  void initState(){
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
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text("Back",style:f15W ,),
                      Icon(Icons.arrow_forward_ios_sharp,color: white,size: 15,),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Container(
          height: height,
          width: width,
          decoration: cont1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 12,right: 12),
            child: Column(
              children: [
                Text("SignIn here",style: f15tG,),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  color: white,
                  child: TextField(
                    controller: email,
                    style: f15,
                    decoration:inputText("email") ,
                  ),
                ),
                SizedBox(height: 10,),
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
                        onPressed: (){
                          setState(() {
                            showPassword = !showPassword;
                          });
                          },
                        icon: Icon(showPassword?Icons.visibility_off:Icons.visibility),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  color: Colors.white,
                  splashColor: second,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: primary)
                  ),
                  child: Center(child: Text("Sign in Here"),),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: f15tG,),
                    Text("Sign UP",style: f15tG,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
