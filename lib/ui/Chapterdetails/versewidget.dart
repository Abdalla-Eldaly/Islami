import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class versewidget extends StatelessWidget {
String content;
int index;
versewidget(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '$content (${index + 1})',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
//          fontFamily: 'monotypekoufibold',
        ),),
      ),
    );
  }
}
