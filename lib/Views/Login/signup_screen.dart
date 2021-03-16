import 'package:flutter/material.dart';

import '../widgets.dart';
import '../widgets.dart';
import 'add_mobilenumer_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();

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
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        "Back",
                        style: f15W,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: white,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
          height: height,
          width: width,
          decoration: cont1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
            child: Column(
              children: [
                Text(
                  "SignUp here",
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
                    decoration: inputText("email"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: white,
                  child: TextField(
                    //controller: email,
                    style: f15,
                    decoration: inputText("text"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: white,
                  child: TextField(
                    //controller: email,
                    style: f15,
                    decoration: inputText("text"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: white,
                  child: TextField(
                    //controller: email,
                    style: f15,
                    decoration: inputText("text"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddNumber()));
                  },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width - 30,
                  color: Colors.white,
                  splashColor: second,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: primary)),
                  child: Center(
                    child: Text("Continue"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: f15tG,
                    ),
                    Text(
                      "Sign UP",
                      style: f15tG,
                    ),
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
