import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Categories/categories2.dart';
import 'package:flutter_ess_app/Views/Categories/category_screen.dart';
import 'package:flutter_ess_app/Views/Categories/search3.dart';
import 'package:flutter_ess_app/Views/Categories/sub_categories_screen.dart';
import 'package:flutter_ess_app/Views/Chat/chat_screen.dart';
import 'package:flutter_ess_app/Views/Profile/profile.dart';
import 'package:flutter_ess_app/Views/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}
class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static List<Widget> _options = <Widget>[

    Category_Screen(),
    //Search(),
    //SubCategories(),
    AddProfile(),
    Text('Timing Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ChatScreen(),
    Text('Settings Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 3),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_rounded),
                  label: 'Timing',
                ),
                BottomNavigationBarItem(
                  icon: Icon(MdiIcons.chatProcessingOutline),
                  label: 'Messenger',
                  //backgroundColor: Colors.lightBlue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(MdiIcons.cogOutline),
                  label: 'Settings',
                  //backgroundColor: Colors.lightBlue,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: primary,
              unselectedItemColor: Colors.grey[400],
              iconSize: 30,
              onTap: _onItemTap,
              elevation: 5
          ),
        ),
      ),
    );
  }
}