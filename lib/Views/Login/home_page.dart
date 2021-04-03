import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Login/walkththrough.dart';
import 'package:flutter_ess_app/Views/localization/licalization_constants.dart';
import 'package:flutter_ess_app/classes/language.dart';
import 'package:flutter_ess_app/main.dart';

import '../widgets.dart';


//import 'package:localization/routes/route_names.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _changeLanguage(Language language) async {
    //print(language.languageCode);
    Locale _temp;

    switch(language.languageCode){
      case 'en':
        _temp = Locale(language.languageCode,'US');
        break;
      case 'ar':
        _temp = Locale(language.languageCode,'SA');
        break;
      default:_temp = Locale('en','US');
    }
    // return _temp = locale('en','US');
    //= await setLocale(language.languageCode);
    MyApp.setLocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      // appBar: AppBar(
      //     title: Text(getTranslated(context, 'continue')),
      //   ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Select your language",style: f15W,),
                  DropdownButton(
                      onChanged: (Language language) {
                        _changeLanguage(language);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                      },
                      icon: Icon(Icons.arrow_drop_down,color: Colors.white,size: 30,),
                      underline: SizedBox(),
                      items: Language.languageList()
                          .map<DropdownMenuItem<Language>>((lang) =>
                          DropdownMenuItem(
                            value: lang,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  lang.flag,
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(lang.name),
                              ],
                            ),
                          ))
                          .toList()),
                ],
              ),
            ),
          ),
        ),
        // drawer: _drawerList(),
        // body: Column(
        //   children: [
        //     Container(
        //       child: Center(child: Text(getTranslated(context, 'personal_info'))
        //       ),
        //     ),
        //     SizedBox(height: 20,),
        //     Text(getTranslated(context, 'data'))
        //   ],
        // )
    );
  }
}