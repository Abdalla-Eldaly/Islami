import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/ui/MyThemData/MyThemeData.dart';
import 'package:islami/ui/home/hadith/hadith.dart';

import '../../home/hadith/hadithtittlewidget.dart';

class HadithDetails extends StatelessWidget {
  static String RoutName = 'hadithDetails';
  @override
  Widget build(BuildContext context) {
    var arge = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemData.isdark
                  ? 'assets/images/dark_bg.png'
                  : 'assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(

            toolbarHeight: 100,
            title: Text(
              arge.tittle,
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Amiri',
                  textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 30,
                      wordSpacing: 2,
                      letterSpacing: 1)),
              textDirection: TextDirection.rtl,
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 7.9),
                  child: Text(arge.content,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 25, wordSpacing: 1, letterSpacing: .5),
                      textDirection: TextDirection.rtl),
                ),
              )
            ],
          )),
    );
  }
}
