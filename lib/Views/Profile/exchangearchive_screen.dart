import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets.dart';
class ExchangeArchive extends StatefulWidget {
  @override
  _ExchangeArchiveState createState() => _ExchangeArchiveState();
}

class _ExchangeArchiveState extends State<ExchangeArchive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.arrow_forward,color: tG,),
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(MdiIcons.textBoxMultipleOutline,color: tG,size: 17,),
                  SizedBox(width: 10,),
                  Text("Exchange archive",style: f12tGw500,)
                ],
              ),
              Card(

              )
            ],
          ),
        ),
      ),
    );
  }
}
