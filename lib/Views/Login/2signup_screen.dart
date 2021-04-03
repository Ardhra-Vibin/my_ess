import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';
import '../widgets.dart';
import '3add_mobilenumer_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();

  String radioButtonItem = "Worker";
  int id ;
  bool conition;
  bool showPassword;


  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      id = 1;
      conition = false;
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
        title: Text("back"),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8,bottom: 30,top: 10),
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
                  child: Text(
                    "Create a new account",
                    style: f15tG,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  // controller: email,
                  style: f15,
                  decoration: inputText("First name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  //controller: email,
                  style: f15,
                  decoration: inputText("Last name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  //controller: email,
                  style: f15,
                  decoration: inputText("E-mail"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: showPassword,
                  style: f15,
                  decoration: InputDecoration(
                      hintText: "Password",
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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          id = 1;
                        });
                      },
                      child: Card(
                        color: id == 1? primary: white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        child:Container(
                          height: 45,
                          width: width/2.4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Worker',
                                style: new TextStyle(fontSize: 15.0,color: id ==1 ?white:tG),
                              ),
                              SizedBox(width: 5,),
                              Icon(MdiIcons.checkCircle,color: id ==1 ?white:fG ,size: id ==1?27:19,),
                              // Radio(
                              //   activeColor:Colors.transparent,
                              //   value: 1,
                              //   groupValue: id,
                              //   onChanged: (val) {
                              //     setState(() {
                              //       radioButtonItem = 'ONE';
                              //       id = 1;
                              //     });
                              //   },
                              // ),
                            ],
                          ),
                        ) ,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          id = 2;
                        });
                      },
                      child: Card(
                        color: id == 2? primary: white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        child:Container(
                          height: 45,
                          width: width/2.4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Free agent',
                                style: new TextStyle(fontSize: 15.0,color: id ==2 ?white:tG),
                              ),
                              SizedBox(width: 5,),
                              Icon(MdiIcons.checkCircle,color: id ==2 ?white:fG,size: id == 2 ? 27:19,),
                              // Radio(
                              //   activeColor:Colors.transparent ,
                              //   value: 2,
                              //   groupValue: id,
                              //   onChanged: (val) {
                              //     setState(() {
                              //       radioButtonItem = 'TWO';
                              //       id = 2;
                              //     });
                              //   },
                              // ),
                            ],
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: width,
                  color: white,
                  child: GestureDetector(
                    onTap: (){
                  setState(() {
                    conition = !conition;
                  });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(MdiIcons.checkCircleOutline,color: conition ? fG:primary,size: 20,),
                    Text("I agree to collect the terms of application",
                    style: TextStyle(color: tG)),
                  ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
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
                  child:Row(
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
                           "Next",style: f17P),
                        SizedBox(width: 115,),
                        Icon(Icons.arrow_forward,color: primary,)
                      ],
                    ),
                  ],
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
