import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Home/home_page_introduction.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets.dart';
class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  var currentText;

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
                  "We sent you a verification code",
                  style: f15tG,
                ),
                SizedBox(
                  height: 30,
                ),
                   Center(
                  child: Container(
                    width: 260,
                    child: PinCodeTextField(autoFocus: true,
                      // controller: pinController,
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: "*",
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        selectedColor: Color(0xFF48c0d8),
                        selectedFillColor: Colors.transparent,
                        inactiveColor: Colors.black,disabledColor: Colors.black,
                        activeColor: Colors.grey,
                        inactiveFillColor: Colors.transparent,
                        shape: PinCodeFieldShape.underline,
                        // borderRadius: BorderRadius.circular(5),
                        fieldHeight: 35,borderWidth: 2,
                        fieldWidth: 50,
                        activeFillColor: Colors.transparent,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                        });
                        //currentText.length == 4?Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePageIntroduction())):" ";
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                ),
                MaterialButton(
                  onPressed: () {
                    currentText.length ==4 ?Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePageIntroduction())):"sorry";
                  },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width - 30,
                  color: Colors.white,
                  splashColor: second,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: primary)),
                  child: Center(
                    child: Text("Ccontinue"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
