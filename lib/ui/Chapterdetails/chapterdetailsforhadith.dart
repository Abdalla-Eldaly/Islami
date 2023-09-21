import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chapterdmforhadith extends StatefulWidget {
  static String RoutName ='hadith';

  chapterdmforhadith(content, int index);

  @override
  State<chapterdmforhadith> createState() => _chapterdmforhadithState();
}

class _chapterdmforhadithState extends State<chapterdmforhadith> {
  @override
  Widget build(BuildContext context) {
    chdmforhadith arges = ModalRoute.of(context)?.settings.arguments as chdmforhadith;
    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(arges.content),
        ),
      ),
    );
  }
}
class chdmforhadith
{
  String content;
  int index;
  chdmforhadith(this.content,this.index);
}