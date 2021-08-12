import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
 final String tt;

 TextPage(this.tt);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3.0, 20.0, 3.0, 10.0),
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 3.0, 10.0),
      child: Text(tt, style: TextStyle(fontSize: 20), textAlign: TextAlign.start,),
    );
  }
}
