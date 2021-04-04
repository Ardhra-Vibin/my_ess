import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/widgets.dart';

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: tG),
        elevation: 0,

      ),
    );
  }
}
